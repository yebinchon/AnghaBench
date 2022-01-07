
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIGURE_DEFINES ;
 int CONFIGURE_SPECIAL_BUILD ;
 int M_INFO ;
 int M_NOPREFIX ;
 int OPENVPN_EXIT_STATUS_USAGE ;
 int msg (int,char*,...) ;
 int openvpn_exit (int ) ;
 int show_library_versions (int) ;
 int show_windows_version (int) ;
 int title_string ;

__attribute__((used)) static void
usage_version(void)
{
    msg(M_INFO|M_NOPREFIX, "%s", title_string);
    show_library_versions( M_INFO|M_NOPREFIX );



    msg(M_INFO|M_NOPREFIX, "Originally developed by James Yonan");
    msg(M_INFO|M_NOPREFIX, "Copyright (C) 2002-2018 OpenVPN Inc <sales@openvpn.net>");
    openvpn_exit(OPENVPN_EXIT_STATUS_USAGE);
}
