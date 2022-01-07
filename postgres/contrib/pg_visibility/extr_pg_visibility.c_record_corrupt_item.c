
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int next; int count; int * tids; } ;
typedef TYPE_1__ corrupt_items ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;


 int * repalloc (int *,int) ;

__attribute__((used)) static void
record_corrupt_item(corrupt_items *items, ItemPointer tid)
{

 if (items->next >= items->count)
 {
  items->count *= 2;
  items->tids = repalloc(items->tids,
          items->count * sizeof(ItemPointerData));
 }

 items->tids[items->next++] = *tid;
}
