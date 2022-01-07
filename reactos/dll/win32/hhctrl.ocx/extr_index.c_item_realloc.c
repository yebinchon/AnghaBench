
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * local; int * name; } ;
struct TYPE_5__ {int nItems; int itemFlags; TYPE_3__* items; } ;
typedef int IndexSubItem ;
typedef TYPE_1__ IndexItem ;


 TYPE_3__* heap_realloc (TYPE_3__*,int) ;

__attribute__((used)) static void item_realloc(IndexItem *item, int num_items)
{
    item->nItems = num_items;
    item->items = heap_realloc(item->items, sizeof(IndexSubItem)*item->nItems);
    item->items[item->nItems-1].name = ((void*)0);
    item->items[item->nItems-1].local = ((void*)0);
    item->itemFlags = 0x00;
}
