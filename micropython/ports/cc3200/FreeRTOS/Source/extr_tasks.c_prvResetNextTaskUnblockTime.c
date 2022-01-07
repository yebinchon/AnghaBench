
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xStateListItem; } ;
typedef TYPE_1__ TCB_t ;


 int listGET_LIST_ITEM_VALUE (int *) ;
 scalar_t__ listGET_OWNER_OF_HEAD_ENTRY (int ) ;
 scalar_t__ listLIST_IS_EMPTY (int ) ;
 scalar_t__ pdFALSE ;
 int portMAX_DELAY ;
 int pxDelayedTaskList ;
 int xNextTaskUnblockTime ;

__attribute__((used)) static void prvResetNextTaskUnblockTime( void )
{
TCB_t *pxTCB;

 if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 {




  xNextTaskUnblockTime = portMAX_DELAY;
 }
 else
 {




  ( pxTCB ) = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList );
  xNextTaskUnblockTime = listGET_LIST_ITEM_VALUE( &( ( pxTCB )->xStateListItem ) );
 }
}
