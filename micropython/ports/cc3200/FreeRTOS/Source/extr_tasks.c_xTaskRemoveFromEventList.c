
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_6__ {scalar_t__ uxPriority; } ;
struct TYPE_5__ {scalar_t__ uxPriority; int xEventListItem; int xStateListItem; } ;
typedef TYPE_1__ TCB_t ;
typedef int List_t ;
typedef void* BaseType_t ;


 int configASSERT (TYPE_1__*) ;
 scalar_t__ listGET_OWNER_OF_HEAD_ENTRY (int const* const) ;
 void* pdFALSE ;
 void* pdTRUE ;
 int prvAddTaskToReadyList (TYPE_1__*) ;
 int prvResetNextTaskUnblockTime () ;
 TYPE_2__* pxCurrentTCB ;
 int uxListRemove (int *) ;
 scalar_t__ uxSchedulerSuspended ;
 int vListInsertEnd (int *,int *) ;
 int xPendingReadyList ;
 void* xYieldPending ;

BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
{
TCB_t *pxUnblockedTCB;
BaseType_t xReturn;
 pxUnblockedTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxEventList );
 configASSERT( pxUnblockedTCB );
 ( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );

 if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
 {
  ( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
  prvAddTaskToReadyList( pxUnblockedTCB );
 }
 else
 {


  vListInsertEnd( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
 }

 if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
 {



  xReturn = pdTRUE;



  xYieldPending = pdTRUE;
 }
 else
 {
  xReturn = pdFALSE;
 }
 return xReturn;
}
