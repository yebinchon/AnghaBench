
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_entry {TYPE_2__* next; TYPE_1__* prev; } ;
struct TYPE_4__ {TYPE_1__* prev; } ;
struct TYPE_3__ {TYPE_2__* next; } ;


 int list_empty (struct list_entry*) ;
 int list_init (struct list_entry*) ;

__attribute__((used)) static void list_remove(
    struct list_entry *entry)
{
    if (!list_empty(entry)) {
        entry->next->prev = entry->prev;
        entry->prev->next = entry->next;
        list_init(entry);
    }
}
