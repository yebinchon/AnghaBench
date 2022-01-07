
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct playlist_entry {struct playlist* pl; TYPE_1__* prev; struct playlist_entry* next; } ;
struct playlist {int current_was_replaced; struct playlist_entry* first; TYPE_1__* last; struct playlist_entry* current; } ;
struct TYPE_2__ {struct playlist_entry* next; } ;


 int assert (int ) ;

__attribute__((used)) static void playlist_unlink(struct playlist *pl, struct playlist_entry *entry)
{
    assert(pl && entry->pl == pl);

    if (pl->current == entry) {
        pl->current = entry->next;
        pl->current_was_replaced = 1;
    }

    if (entry->next) {
        entry->next->prev = entry->prev;
    } else {
        pl->last = entry->prev;
    }
    if (entry->prev) {
        entry->prev->next = entry->next;
    } else {
        pl->first = entry->next;
    }
    entry->next = entry->prev = ((void*)0);

    entry->pl = ((void*)0);
}
