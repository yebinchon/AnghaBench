
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_NOPREFIX ;
 int M_WARN ;
 int OPENVPN_EXIT_STATUS_USAGE ;
 int msg (int,char*) ;
 int openvpn_exit (int ) ;

void
usage_small(void)
{
    msg(M_WARN|M_NOPREFIX, "Use --help for more information.");
    openvpn_exit(OPENVPN_EXIT_STATUS_USAGE);
}
