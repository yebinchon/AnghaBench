
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LSAPI_On_Timer_pf ;


 int s_proc_group_timer_cb ;

void LSAPI_Register_Pgrp_Timer_Callback(LSAPI_On_Timer_pf cb)
{
    s_proc_group_timer_cb = cb;
}
