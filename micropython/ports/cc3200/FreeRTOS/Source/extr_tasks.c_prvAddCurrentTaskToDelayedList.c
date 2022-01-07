
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
typedef scalar_t__ TickType_t ;
struct TYPE_2__ {scalar_t__ ucDelayAborted; int xStateListItem; int uxPriority; } ;
typedef scalar_t__ BaseType_t ;


 int listSET_LIST_ITEM_VALUE (int *,scalar_t__) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ const pdFALSE ;
 scalar_t__ portMAX_DELAY ;
 int portRESET_READY_PRIORITY (int ,int ) ;
 TYPE_1__* pxCurrentTCB ;
 int pxDelayedTaskList ;
 int pxOverflowDelayedTaskList ;
 scalar_t__ uxListRemove (int *) ;
 int uxTopReadyPriority ;
 int vListInsert (int ,int *) ;
 int vListInsertEnd (int *,int *) ;
 scalar_t__ xNextTaskUnblockTime ;
 int xSuspendedTaskList ;
 scalar_t__ xTickCount ;

__attribute__((used)) static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait, const BaseType_t xCanBlockIndefinitely )
{
TickType_t xTimeToWake;
const TickType_t xConstTickCount = xTickCount;
 if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
 {


  portRESET_READY_PRIORITY( pxCurrentTCB->uxPriority, uxTopReadyPriority );
 }
 else
 {
  mtCOVERAGE_TEST_MARKER();
 }
 {



  xTimeToWake = xConstTickCount + xTicksToWait;


  listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );

  if( xTimeToWake < xConstTickCount )
  {

   vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
  }
  else
  {

   vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );




   if( xTimeToWake < xNextTaskUnblockTime )
   {
    xNextTaskUnblockTime = xTimeToWake;
   }
   else
   {
    mtCOVERAGE_TEST_MARKER();
   }
  }


  ( void ) xCanBlockIndefinitely;
 }

}
