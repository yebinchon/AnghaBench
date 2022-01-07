
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int profiler_time_entries_t ;
struct TYPE_3__ {int times_between_calls; } ;
typedef TYPE_1__ profiler_snapshot_entry_t ;



profiler_time_entries_t *
profiler_snapshot_entry_times_between_calls(profiler_snapshot_entry_t *entry)
{
 return entry ? &entry->times_between_calls : ((void*)0);
}
