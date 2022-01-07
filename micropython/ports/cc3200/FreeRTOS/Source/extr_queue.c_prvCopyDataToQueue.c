
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_4__ {scalar_t__ pcReadFrom; } ;
struct TYPE_5__ {scalar_t__ uxMessagesWaiting; scalar_t__ uxItemSize; scalar_t__ uxQueueType; scalar_t__ pcWriteTo; scalar_t__ pcTail; scalar_t__ pcHead; TYPE_1__ u; int * pxMutexHolder; } ;
typedef TYPE_2__ Queue_t ;
typedef scalar_t__ BaseType_t ;


 int memcpy (void*,void const*,size_t) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 scalar_t__ const queueOVERWRITE ;
 scalar_t__ queueQUEUE_IS_MUTEX ;
 scalar_t__ const queueSEND_TO_BACK ;
 scalar_t__ xTaskPriorityDisinherit (void*) ;

__attribute__((used)) static BaseType_t prvCopyDataToQueue( Queue_t * const pxQueue, const void *pvItemToQueue, const BaseType_t xPosition )
{
BaseType_t xReturn = pdFALSE;
UBaseType_t uxMessagesWaiting;



 uxMessagesWaiting = pxQueue->uxMessagesWaiting;

 if( pxQueue->uxItemSize == ( UBaseType_t ) 0 )
 {
 }
 else if( xPosition == queueSEND_TO_BACK )
 {
  ( void ) memcpy( ( void * ) pxQueue->pcWriteTo, pvItemToQueue, ( size_t ) pxQueue->uxItemSize );
  pxQueue->pcWriteTo += pxQueue->uxItemSize;
  if( pxQueue->pcWriteTo >= pxQueue->pcTail )
  {
   pxQueue->pcWriteTo = pxQueue->pcHead;
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }
 }
 else
 {
  ( void ) memcpy( ( void * ) pxQueue->u.pcReadFrom, pvItemToQueue, ( size_t ) pxQueue->uxItemSize );
  pxQueue->u.pcReadFrom -= pxQueue->uxItemSize;
  if( pxQueue->u.pcReadFrom < pxQueue->pcHead )
  {
   pxQueue->u.pcReadFrom = ( pxQueue->pcTail - pxQueue->uxItemSize );
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }

  if( xPosition == queueOVERWRITE )
  {
   if( uxMessagesWaiting > ( UBaseType_t ) 0 )
   {




    --uxMessagesWaiting;
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

 pxQueue->uxMessagesWaiting = uxMessagesWaiting + 1;

 return xReturn;
}
