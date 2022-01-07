
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* location; int relfilenode; } ;
struct TYPE_5__ {struct TYPE_5__* next; TYPE_1__ location; struct TYPE_5__* prev; } ;
typedef TYPE_2__ ss_lru_item_t ;
struct TYPE_6__ {TYPE_2__* head; TYPE_2__* tail; } ;
typedef int RelFileNode ;
typedef void* BlockNumber ;


 int RelFileNodeEquals (int ,int ) ;
 TYPE_3__* scan_locations ;

__attribute__((used)) static BlockNumber
ss_search(RelFileNode relfilenode, BlockNumber location, bool set)
{
 ss_lru_item_t *item;

 item = scan_locations->head;
 for (;;)
 {
  bool match;

  match = RelFileNodeEquals(item->location.relfilenode, relfilenode);

  if (match || item->next == ((void*)0))
  {




   if (!match)
   {
    item->location.relfilenode = relfilenode;
    item->location.location = location;
   }
   else if (set)
    item->location.location = location;


   if (item != scan_locations->head)
   {

    if (item == scan_locations->tail)
     scan_locations->tail = item->prev;
    item->prev->next = item->next;
    if (item->next)
     item->next->prev = item->prev;


    item->prev = ((void*)0);
    item->next = scan_locations->head;
    scan_locations->head->prev = item;
    scan_locations->head = item;
   }

   return item->location.location;
  }

  item = item->next;
 }


}
