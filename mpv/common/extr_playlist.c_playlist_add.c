
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {int dummy; } ;
struct playlist {int last; } ;


 int playlist_insert (struct playlist*,int ,struct playlist_entry*) ;

void playlist_add(struct playlist *pl, struct playlist_entry *add)
{
    playlist_insert(pl, pl->last, add);
}
