
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int8_t ;
struct TYPE_4__ {scalar_t__ cTxLock; scalar_t__ cRxLock; int xTasksWaitingToSend; int xTasksWaitingToReceive; int * pxQueueSetContainer; } ;
typedef TYPE_1__ Queue_t ;


 scalar_t__ listLIST_IS_EMPTY (int *) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 scalar_t__ prvNotifyQueueSetContainer (TYPE_1__* const,int ) ;
 scalar_t__ queueLOCKED_UNMODIFIED ;
 int queueSEND_TO_BACK ;
 void* queueUNLOCKED ;
 int taskENTER_CRITICAL () ;
 int taskEXIT_CRITICAL () ;
 int vTaskMissedYield () ;
 scalar_t__ xTaskRemoveFromEventList (int *) ;

__attribute__((used)) static void prvUnlockQueue( Queue_t * const pxQueue )
{






 taskENTER_CRITICAL();
 {
  int8_t cTxLock = pxQueue->cTxLock;


  while( cTxLock > queueLOCKED_UNMODIFIED )
  {
   {


    if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
    {
     if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
     {


      vTaskMissedYield();
     }
     else
     {
      mtCOVERAGE_TEST_MARKER();
     }
    }
    else
    {
     break;
    }
   }


   --cTxLock;
  }

  pxQueue->cTxLock = queueUNLOCKED;
 }
 taskEXIT_CRITICAL();


 taskENTER_CRITICAL();
 {
  int8_t cRxLock = pxQueue->cRxLock;

  while( cRxLock > queueLOCKED_UNMODIFIED )
  {
   if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
   {
    if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
    {
     vTaskMissedYield();
    }
    else
    {
     mtCOVERAGE_TEST_MARKER();
    }

    --cRxLock;
   }
   else
   {
    break;
   }
  }

  pxQueue->cRxLock = queueUNLOCKED;
 }
 taskEXIT_CRITICAL();
}
