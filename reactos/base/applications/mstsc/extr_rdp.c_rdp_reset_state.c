
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_next_packet ;
 scalar_t__ g_rdp_shareid ;
 int sec_reset_state () ;

void
rdp_reset_state(void)
{
 g_next_packet = ((void*)0);
 g_rdp_shareid = 0;
 sec_reset_state();
}
