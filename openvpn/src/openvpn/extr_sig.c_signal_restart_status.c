
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_info {int signal_received; scalar_t__ signal_text; } ;


 int OPENVPN_STATE_EXITING ;
 int OPENVPN_STATE_RECONNECTING ;




 scalar_t__ management ;
 int management_set_state (scalar_t__,int,scalar_t__,int *,int *,int *,int *) ;
 scalar_t__ signal_name (int,int) ;

void
signal_restart_status(const struct signal_info *si)
{
}
