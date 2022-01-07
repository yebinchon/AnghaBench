
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_Register_Pgrp_Timer_Callback (int ) ;
 int LSCRIU_Debugging () ;
 int LSCRIU_Init_Env_Parameters () ;
 int LSCRIU_Init_Global_Counter (int ) ;
 int LSCRIU_Wink_Server_is_Ready () ;
 int LSCRIU_load_liblscapi () ;
 int LSCRIU_on_timer ;
 int getpid () ;
 int lscriu_dbg (char*,int ) ;
 scalar_t__ s_initial_start_reqs ;
 int s_native ;
 int s_pid ;

int LSCRIU_Init(void)
{
    s_pid = getpid();
    LSCRIU_Debugging();
    LSCRIU_Init_Env_Parameters();
    if (s_initial_start_reqs && !s_native) {
        if (LSCRIU_load_liblscapi() == -1)
            s_initial_start_reqs = 0;
    }
    if (s_initial_start_reqs) {
        LSCRIU_Wink_Server_is_Ready();
        lscriu_dbg("LSCRIU (%d): LSAPI_Register_Pgrp_Timer_Callback\n", s_pid);
        LSAPI_Register_Pgrp_Timer_Callback(LSCRIU_on_timer);
        LSCRIU_Init_Global_Counter(0);
    }
    return s_initial_start_reqs > 0;
}
