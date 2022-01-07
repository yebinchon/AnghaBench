
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENVPN_DEBUG_FILE ;
 int OPENVPN_EXIT_STATUS_CANNOT_OPEN_DEBUG_FILE ;
 void* OPENVPN_MSG_FP ;
 void* default_err ;
 void* default_out ;
 int * fopen (int ,char*) ;
 int machine_readable_output ;
 int * msgfp ;
 scalar_t__ mute_category ;
 scalar_t__ mute_count ;
 scalar_t__ mute_cutoff ;
 int openvpn_exit (int ) ;
 int std_redir ;
 int suppress_timestamps ;
 int use_syslog ;
 int x_debug_level ;

void
error_reset(void)
{
    use_syslog = std_redir = 0;
    suppress_timestamps = 0;
    machine_readable_output = 0;
    x_debug_level = 1;
    mute_cutoff = 0;
    mute_count = 0;
    mute_category = 0;
    default_out = OPENVPN_MSG_FP;
    default_err = OPENVPN_MSG_FP;
    msgfp = ((void*)0);

}
