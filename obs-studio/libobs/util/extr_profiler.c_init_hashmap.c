
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int profile_times_table_entry ;
struct TYPE_3__ {size_t size; int * old_entries; scalar_t__ old_occupied; scalar_t__ old_start_index; int entries; scalar_t__ max_probe_count; scalar_t__ occupied; } ;
typedef TYPE_1__ profile_times_table ;


 int bzalloc (int) ;

__attribute__((used)) static void init_hashmap(profile_times_table *map, size_t size)
{
 map->size = size;
 map->occupied = 0;
 map->max_probe_count = 0;
 map->entries = bzalloc(sizeof(profile_times_table_entry) * size);
 map->old_start_index = 0;
 map->old_occupied = 0;
 map->old_entries = ((void*)0);
}
