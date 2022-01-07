
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * old_entries; int * entries; scalar_t__ size; } ;
typedef TYPE_1__ profile_times_table ;


 int bfree (int *) ;

__attribute__((used)) static void free_hashmap(profile_times_table *map)
{
 map->size = 0;
 bfree(map->entries);
 map->entries = ((void*)0);
 bfree(map->old_entries);
 map->old_entries = ((void*)0);
}
