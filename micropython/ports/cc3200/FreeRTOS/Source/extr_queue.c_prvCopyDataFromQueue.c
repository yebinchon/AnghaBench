
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_4__ {scalar_t__ pcReadFrom; } ;
struct TYPE_5__ {scalar_t__ uxItemSize; scalar_t__ pcTail; scalar_t__ pcHead; TYPE_1__ u; } ;
typedef TYPE_2__ Queue_t ;


 int memcpy (void*,void*,size_t) ;
 int mtCOVERAGE_TEST_MARKER () ;

__attribute__((used)) static void prvCopyDataFromQueue( Queue_t * const pxQueue, void * const pvBuffer )
{
 if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
 {
  pxQueue->u.pcReadFrom += pxQueue->uxItemSize;
  if( pxQueue->u.pcReadFrom >= pxQueue->pcTail )
  {
   pxQueue->u.pcReadFrom = pxQueue->pcHead;
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }
  ( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.pcReadFrom, ( size_t ) pxQueue->uxItemSize );
 }
}
