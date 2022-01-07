
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UBaseType_t ;
struct TYPE_4__ {scalar_t__ pcReadFrom; } ;
struct TYPE_5__ {int uxLength; int uxItemSize; int uxMessagesWaiting; int xTasksWaitingToReceive; int xTasksWaitingToSend; void* cTxLock; void* cRxLock; scalar_t__ pcHead; TYPE_1__ u; scalar_t__ pcWriteTo; scalar_t__ pcTail; } ;
typedef TYPE_2__ Queue_t ;
typedef scalar_t__ QueueHandle_t ;
typedef scalar_t__ BaseType_t ;


 int configASSERT (TYPE_2__* const) ;
 scalar_t__ listLIST_IS_EMPTY (int *) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdPASS ;
 void* queueUNLOCKED ;
 int queueYIELD_IF_USING_PREEMPTION () ;
 int taskENTER_CRITICAL () ;
 int taskEXIT_CRITICAL () ;
 int vListInitialise (int *) ;
 scalar_t__ xTaskRemoveFromEventList (int *) ;

BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue )
{
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

 configASSERT( pxQueue );

 taskENTER_CRITICAL();
 {
  pxQueue->pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize );
  pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
  pxQueue->pcWriteTo = pxQueue->pcHead;
  pxQueue->u.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - ( UBaseType_t ) 1U ) * pxQueue->uxItemSize );
  pxQueue->cRxLock = queueUNLOCKED;
  pxQueue->cTxLock = queueUNLOCKED;

  if( xNewQueue == pdFALSE )
  {





   if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
   {
    if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
    {
     queueYIELD_IF_USING_PREEMPTION();
    }
    else
    {
     mtCOVERAGE_TEST_MARKER();
    }
   }
   else
   {
    mtCOVERAGE_TEST_MARKER();
   }
  }
  else
  {

   vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
   vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
  }
 }
 taskEXIT_CRITICAL();



 return pdPASS;
}
