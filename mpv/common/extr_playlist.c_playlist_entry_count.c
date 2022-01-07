
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist {int last; } ;


 int playlist_entry_to_index (struct playlist*,int ) ;

int playlist_entry_count(struct playlist *pl)
{
    return playlist_entry_to_index(pl, pl->last) + 1;
}
