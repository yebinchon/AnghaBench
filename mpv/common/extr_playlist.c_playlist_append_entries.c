
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {int dummy; } ;
struct playlist {struct playlist_entry* first; } ;


 int playlist_add (struct playlist*,struct playlist_entry*) ;
 int playlist_unlink (struct playlist*,struct playlist_entry*) ;

void playlist_append_entries(struct playlist *pl, struct playlist *source_pl)
{
    while (source_pl->first) {
        struct playlist_entry *e = source_pl->first;
        playlist_unlink(source_pl, e);
        playlist_add(pl, e);
    }
}
