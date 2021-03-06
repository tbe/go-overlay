# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

GOLANG_PKG_IMPORTPATH="github.com/${PN}"
GOLANG_PKG_ARCHIVEPREFIX="v"
GOLANG_PKG_HAVE_TEST=1

inherit golang-single

DESCRIPTION="A terminal session recorder for asciinema.org service"
HOMEPAGE="https://${GOLANG_PKG_IMPORTPATH}/${PN} http://asciinema.org"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86 arm"

src_install() {
	golang-single_src_install

	# Install man pages
	doman man/*.1
}
