
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int count; int time_delta; } ;
struct TYPE_8__ {TYPE_1__ entry; int probes; } ;
typedef TYPE_2__ profile_times_table_entry ;
struct TYPE_9__ {size_t old_start_index; scalar_t__ old_occupied; TYPE_2__* old_entries; } ;
typedef TYPE_3__ profile_times_table ;


 int add_hashmap_entry (TYPE_3__*,int ,int ) ;
 int bfree (TYPE_2__*) ;

__attribute__((used)) static void migrate_old_entries(profile_times_table *map, bool limit_items)
{
 if (!map->old_entries)
  return;

 if (!map->old_occupied) {
  bfree(map->old_entries);
  map->old_entries = ((void*)0);
  return;
 }

 for (size_t i = 0; !limit_items || i < 8; i++, map->old_start_index++) {
  if (!map->old_occupied)
   return;

  profile_times_table_entry *entry =
   &map->old_entries[map->old_start_index];
  if (!entry->probes)
   continue;

  add_hashmap_entry(map, entry->entry.time_delta,
      entry->entry.count);
  map->old_occupied -= 1;
 }
}
