
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile uint8_t ;
typedef int uint32_t ;
typedef int BaseType_t ;


 int configASSERT (int volatile) ;
 int volatile configMAX_SYSCALL_INTERRUPT_PRIORITY ;
 scalar_t__ portFIRST_USER_INTERRUPT_NUMBER ;
 int portMAX_8_BIT_VALUE ;
 int portMAX_PRIGROUP_BITS ;
 scalar_t__ portNVIC_IP_REGISTERS_OFFSET_16 ;
 int portNVIC_PENDSV_PRI ;
 int portNVIC_SYSPRI2_REG ;
 int portNVIC_SYSTICK_PRI ;
 int portPRIGROUP_SHIFT ;
 int portPRIORITY_GROUP_MASK ;
 int volatile portTOP_BIT_OF_BYTE ;
 int prvPortStartFirstTask () ;
 int prvTaskExitError () ;
 int ucMaxSysCallPriority ;
 int ulMaxPRIGROUPValue ;
 scalar_t__ uxCriticalNesting ;
 int vPortSetupTimerInterrupt () ;

BaseType_t xPortStartScheduler( void )
{


 configASSERT( configMAX_SYSCALL_INTERRUPT_PRIORITY );
 portNVIC_SYSPRI2_REG |= portNVIC_PENDSV_PRI;
 portNVIC_SYSPRI2_REG |= portNVIC_SYSTICK_PRI;



 vPortSetupTimerInterrupt();


 uxCriticalNesting = 0;


 prvPortStartFirstTask();





 prvTaskExitError();


 return 0;
}
