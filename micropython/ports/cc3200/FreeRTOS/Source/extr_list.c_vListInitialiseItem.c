
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * pvContainer; } ;
typedef TYPE_1__ ListItem_t ;


 int listSET_FIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE (TYPE_1__* const) ;
 int listSET_SECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE (TYPE_1__* const) ;

void vListInitialiseItem( ListItem_t * const pxItem )
{

 pxItem->pvContainer = ((void*)0);



 listSET_FIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE( pxItem );
 listSET_SECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE( pxItem );
}
