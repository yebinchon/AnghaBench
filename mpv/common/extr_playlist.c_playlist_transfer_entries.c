
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* first; struct playlist_entry* last; struct playlist_entry* current; scalar_t__ current_was_replaced; } ;


 int playlist_insert (struct playlist*,struct playlist_entry*,struct playlist_entry*) ;
 int playlist_unlink (struct playlist*,struct playlist_entry*) ;

void playlist_transfer_entries(struct playlist *pl, struct playlist *source_pl)
{
    struct playlist_entry *add_after = pl->current;
    if (pl->current && pl->current_was_replaced)
        add_after = pl->current->next;
    if (!add_after)
        add_after = pl->last;

    while (source_pl->first) {
        struct playlist_entry *e = source_pl->first;
        playlist_unlink(source_pl, e);
        playlist_insert(pl, add_after, e);
        add_after = e;
    }
}
