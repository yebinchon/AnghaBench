
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HAL_IncrementTick () ;

void vApplicationTickHook (void)
{
    HAL_IncrementTick();
}
