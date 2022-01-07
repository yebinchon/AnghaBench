
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {struct playlist_entry* next; struct playlist_entry* prev; struct playlist* pl; } ;
struct playlist {struct playlist_entry* current; scalar_t__ current_was_replaced; } ;


 int assert (int) ;

struct playlist_entry *playlist_get_next(struct playlist *pl, int direction)
{
    assert(direction == -1 || direction == +1);
    if (!pl->current)
        return ((void*)0);
    assert(pl->current->pl == pl);
    if (direction < 0)
        return pl->current->prev;
    return pl->current_was_replaced ? pl->current : pl->current->next;
}
