
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* first; } ;



__attribute__((used)) static int playlist_count(struct playlist *pl)
{
    int c = 0;
    for (struct playlist_entry *e = pl->first; e; e = e->next)
        c++;
    return c;
}
