
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const OPENVPN_EXIT_STATUS_ERROR ;
 int const OPENVPN_EXIT_STATUS_GOOD ;
 int abort () ;
 int close_syslog () ;
 int exit (int const) ;
 int forked ;
 int mstats_close () ;
 int perf_output_results () ;
 int plugin_abort () ;
 scalar_t__ port_share ;
 int port_share_abort (scalar_t__) ;
 int tun_abort () ;
 int uninit_win32 () ;

void
openvpn_exit(const int status)
{
    if (!forked)
    {
        tun_abort();





        close_syslog();
        if (status == OPENVPN_EXIT_STATUS_GOOD)
        {
            perf_output_results();
        }
    }

    exit(status);
}
