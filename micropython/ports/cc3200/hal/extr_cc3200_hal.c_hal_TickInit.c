
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWREG ;


 int FAULT_SYSTICK ;
 int HAL_FCPU_HZ ;
 int HAL_IncrementTick ;
 int HAL_SYSTICK_PERIOD_US ;
 scalar_t__ HAL_tickCount ;
 int MAP_IntEnable (int ) ;
 int MAP_SysTickEnable () ;
 int MAP_SysTickIntEnable () ;
 int MAP_SysTickIntRegister (int ) ;
 int MAP_SysTickPeriodSet (int) ;

__attribute__((used)) static void hal_TickInit (void) {
    HAL_tickCount = 0;
    MAP_SysTickIntRegister(HAL_IncrementTick);
    MAP_IntEnable(FAULT_SYSTICK);
    MAP_SysTickIntEnable();
    MAP_SysTickPeriodSet(HAL_FCPU_HZ / HAL_SYSTICK_PERIOD_US);

    HWREG(NVIC_ST_CURRENT) = 0;
    MAP_SysTickEnable();
}
