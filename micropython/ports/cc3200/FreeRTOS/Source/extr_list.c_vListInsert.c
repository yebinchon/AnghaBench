
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ TickType_t ;
struct TYPE_10__ {scalar_t__ xItemValue; void* pvContainer; struct TYPE_10__* pxNext; struct TYPE_10__* pxPrevious; } ;
struct TYPE_8__ {TYPE_3__* pxPrevious; } ;
struct TYPE_9__ {int uxNumberOfItems; TYPE_1__ xListEnd; } ;
typedef TYPE_2__ List_t ;
typedef TYPE_3__ ListItem_t ;


 int listTEST_LIST_INTEGRITY (TYPE_2__* const) ;
 int listTEST_LIST_ITEM_INTEGRITY (TYPE_3__* const) ;
 scalar_t__ const portMAX_DELAY ;

void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem )
{
ListItem_t *pxIterator;
const TickType_t xValueOfInsertion = pxNewListItem->xItemValue;




 listTEST_LIST_INTEGRITY( pxList );
 listTEST_LIST_ITEM_INTEGRITY( pxNewListItem );
 if( xValueOfInsertion == portMAX_DELAY )
 {
  pxIterator = pxList->xListEnd.pxPrevious;
 }
 else
 {
  for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext )
  {


  }
 }

 pxNewListItem->pxNext = pxIterator->pxNext;
 pxNewListItem->pxNext->pxPrevious = pxNewListItem;
 pxNewListItem->pxPrevious = pxIterator;
 pxIterator->pxNext = pxNewListItem;



 pxNewListItem->pvContainer = ( void * ) pxList;

 ( pxList->uxNumberOfItems )++;
}
