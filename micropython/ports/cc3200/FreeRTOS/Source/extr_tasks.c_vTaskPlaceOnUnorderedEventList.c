
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TickType_t ;
struct TYPE_2__ {int xEventListItem; } ;
typedef int List_t ;


 int configASSERT (int) ;
 int listSET_LIST_ITEM_VALUE (int *,int const) ;
 int pdTRUE ;
 int prvAddCurrentTaskToDelayedList (int const,int ) ;
 TYPE_1__* pxCurrentTCB ;
 int const taskEVENT_LIST_ITEM_VALUE_IN_USE ;
 scalar_t__ uxSchedulerSuspended ;
 int vListInsertEnd (int *,int *) ;

void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait )
{
 configASSERT( pxEventList );



 configASSERT( uxSchedulerSuspended != 0 );




 listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ), xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );






 vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );

 prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
}
