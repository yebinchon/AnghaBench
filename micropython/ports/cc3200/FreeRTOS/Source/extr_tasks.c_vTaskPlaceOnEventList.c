
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TickType_t ;
struct TYPE_2__ {int xEventListItem; } ;
typedef int List_t ;


 int configASSERT (int * const) ;
 int pdTRUE ;
 int prvAddCurrentTaskToDelayedList (int const,int ) ;
 TYPE_1__* pxCurrentTCB ;
 int vListInsert (int * const,int *) ;

void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait )
{
 configASSERT( pxEventList );
 vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );

 prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
}
