
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist {int current_was_replaced; int current; scalar_t__ first; } ;


 int assert (int) ;
 int playlist_remove (struct playlist*,scalar_t__) ;

void playlist_clear(struct playlist *pl)
{
    while (pl->first)
        playlist_remove(pl, pl->first);
    assert(!pl->current);
    pl->current_was_replaced = 0;
}
