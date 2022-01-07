
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long configCPU_CLOCK_HZ ;
 unsigned long configSYSTICK_CLOCK_HZ ;
 unsigned long configTICK_RATE_HZ ;
 int portMAX_24_BIT_NUMBER ;
 unsigned long portMISSED_COUNTS_FACTOR ;
 int portNVIC_SYSTICK_CLK_BIT ;
 int portNVIC_SYSTICK_CTRL_REG ;
 int portNVIC_SYSTICK_ENABLE_BIT ;
 int portNVIC_SYSTICK_INT_BIT ;
 unsigned long portNVIC_SYSTICK_LOAD_REG ;
 unsigned long ulStoppedTimerCompensation ;
 int ulTimerCountsForOneTick ;
 int xMaximumPossibleSuppressedTicks ;

__attribute__(( weak )) void vPortSetupTimerInterrupt( void )
{
 portNVIC_SYSTICK_LOAD_REG = ( configSYSTICK_CLOCK_HZ / configTICK_RATE_HZ ) - 1UL;
 portNVIC_SYSTICK_CTRL_REG = ( portNVIC_SYSTICK_CLK_BIT | portNVIC_SYSTICK_INT_BIT | portNVIC_SYSTICK_ENABLE_BIT );
}
