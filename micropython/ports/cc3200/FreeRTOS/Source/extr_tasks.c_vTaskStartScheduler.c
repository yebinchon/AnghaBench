
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ TickType_t ;
struct TYPE_2__ {int xNewLib_reent; } ;
typedef int StaticTask_t ;
typedef int StackType_t ;
typedef scalar_t__ BaseType_t ;


 int * _impure_ptr ;
 int configASSERT (int) ;
 int configMINIMAL_STACK_SIZE ;
 scalar_t__ errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFAIL ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdPASS ;
 int pdTRUE ;
 int portCONFIGURE_TIMER_FOR_RUN_TIME_STATS () ;
 int portDISABLE_INTERRUPTS () ;
 int portMAX_DELAY ;
 int portPRIVILEGE_BIT ;
 int prvIdleTask ;
 TYPE_1__* pxCurrentTCB ;
 int tskIDLE_PRIORITY ;
 int vApplicationGetIdleTaskMemory (int **,int **,int *) ;
 int * xIdleTaskHandle ;
 int xNextTaskUnblockTime ;
 scalar_t__ xPortStartScheduler () ;
 int xSchedulerRunning ;
 scalar_t__ xTaskCreate (int ,char*,int ,void*,int,int **) ;
 int * xTaskCreateStatic (int ,char*,int ,void*,int,int *,int *) ;
 scalar_t__ xTickCount ;
 scalar_t__ xTimerCreateTimerTask () ;

void vTaskStartScheduler( void )
{
BaseType_t xReturn;
 {

  xReturn = xTaskCreate( prvIdleTask,
        "IDLE", configMINIMAL_STACK_SIZE,
        ( void * ) ((void*)0),
        ( tskIDLE_PRIORITY | portPRIVILEGE_BIT ),
        &xIdleTaskHandle );
 }
 if( xReturn == pdPASS )
 {





  portDISABLE_INTERRUPTS();
  xNextTaskUnblockTime = portMAX_DELAY;
  xSchedulerRunning = pdTRUE;
  xTickCount = ( TickType_t ) 0U;




  portCONFIGURE_TIMER_FOR_RUN_TIME_STATS();



  if( xPortStartScheduler() != pdFALSE )
  {


  }
  else
  {

  }
 }
 else
 {



  configASSERT( xReturn != errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY );
 }



 ( void ) xIdleTaskHandle;
}
