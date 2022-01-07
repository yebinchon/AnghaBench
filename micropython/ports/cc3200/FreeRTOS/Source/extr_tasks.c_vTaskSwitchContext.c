
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_2__ {int xNewLib_reent; int ulRunTimeCounter; } ;


 int * _impure_ptr ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 int portALT_GET_RUN_TIME_COUNTER_VALUE (scalar_t__) ;
 scalar_t__ portGET_RUN_TIME_COUNTER_VALUE () ;
 TYPE_1__* pxCurrentTCB ;
 int taskCHECK_FOR_STACK_OVERFLOW () ;
 int taskSELECT_HIGHEST_PRIORITY_TASK () ;
 int traceTASK_SWITCHED_IN () ;
 int traceTASK_SWITCHED_OUT () ;
 scalar_t__ ulTaskSwitchedInTime ;
 scalar_t__ ulTotalRunTime ;
 scalar_t__ uxSchedulerSuspended ;
 scalar_t__ xYieldPending ;

void vTaskSwitchContext( void )
{
 if( uxSchedulerSuspended != ( UBaseType_t ) pdFALSE )
 {


  xYieldPending = pdTRUE;
 }
 else
 {
  xYieldPending = pdFALSE;
  traceTASK_SWITCHED_OUT();
  taskCHECK_FOR_STACK_OVERFLOW();



  taskSELECT_HIGHEST_PRIORITY_TASK();
  traceTASK_SWITCHED_IN();
 }
}
