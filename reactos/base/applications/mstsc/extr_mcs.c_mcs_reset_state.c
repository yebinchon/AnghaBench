
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_mcs_userid ;
 int iso_reset_state () ;

void
mcs_reset_state(void)
{
 g_mcs_userid = 0;
 iso_reset_state();
}
