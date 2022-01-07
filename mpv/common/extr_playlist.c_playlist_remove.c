
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {int removed; } ;
struct playlist {int dummy; } ;


 int playlist_entry_unref (struct playlist_entry*) ;
 int playlist_unlink (struct playlist*,struct playlist_entry*) ;

void playlist_remove(struct playlist *pl, struct playlist_entry *entry)
{
    playlist_unlink(pl, entry);
    entry->removed = 1;
    playlist_entry_unref(entry);
}
