
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {int prev; } ;
struct playlist {int current_was_replaced; struct playlist_entry* current; int last; } ;


 int playlist_insert (struct playlist*,int ,struct playlist_entry*) ;
 int playlist_unlink (struct playlist*,struct playlist_entry*) ;

void playlist_move(struct playlist *pl, struct playlist_entry *entry,
                   struct playlist_entry *at)
{
    if (entry == at)
        return;

    struct playlist_entry *save_current = pl->current;
    bool save_replaced = pl->current_was_replaced;

    playlist_unlink(pl, entry);
    playlist_insert(pl, at ? at->prev : pl->last, entry);

    pl->current = save_current;
    pl->current_was_replaced = save_replaced;
}
