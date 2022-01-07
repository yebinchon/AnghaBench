
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __WFI () ;
 int mperror_heartbeat_signal () ;

void vApplicationIdleHook (void)
{

    mperror_heartbeat_signal();

    __WFI();
}
