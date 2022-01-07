
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {struct playlist* pl; struct playlist_entry* prev; struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* last; struct playlist_entry* first; } ;


 int assert (int) ;
 int talloc_steal (struct playlist*,struct playlist_entry*) ;

void playlist_insert(struct playlist *pl, struct playlist_entry *after,
                     struct playlist_entry *add)
{
    assert(pl && add->pl == ((void*)0) && add->next == ((void*)0) && add->prev == ((void*)0));
    if (after) {
        assert(after->pl == pl);
        assert(pl->first && pl->last);
    }
    add->prev = after;
    if (after) {
        add->next = after->next;
        after->next = add;
    } else {
        add->next = pl->first;
        pl->first = add;
    }
    if (add->next) {
        add->next->prev = add;
    } else {
        pl->last = add;
    }
    add->pl = pl;
    talloc_steal(pl, add);
}
