
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* first; } ;



struct playlist_entry *playlist_entry_from_index(struct playlist *pl, int index)
{
    struct playlist_entry *e = pl->first;
    for (int n = 0; ; n++) {
        if (!e || n == index)
            return e;
        e = e->next;
    }
}
