
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void* pvContainer; struct TYPE_8__* pxPrevious; struct TYPE_8__* pxNext; } ;
struct TYPE_7__ {int uxNumberOfItems; TYPE_2__* pxIndex; } ;
typedef TYPE_1__ List_t ;
typedef TYPE_2__ ListItem_t ;


 int listTEST_LIST_INTEGRITY (TYPE_1__* const) ;
 int listTEST_LIST_ITEM_INTEGRITY (TYPE_2__* const) ;
 int mtCOVERAGE_TEST_DELAY () ;

void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem )
{
ListItem_t * const pxIndex = pxList->pxIndex;




 listTEST_LIST_INTEGRITY( pxList );
 listTEST_LIST_ITEM_INTEGRITY( pxNewListItem );




 pxNewListItem->pxNext = pxIndex;
 pxNewListItem->pxPrevious = pxIndex->pxPrevious;


 mtCOVERAGE_TEST_DELAY();

 pxIndex->pxPrevious->pxNext = pxNewListItem;
 pxIndex->pxPrevious = pxNewListItem;


 pxNewListItem->pvContainer = ( void * ) pxList;

 ( pxList->uxNumberOfItems )++;
}
