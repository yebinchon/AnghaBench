
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int profiler_time_entry ;
struct TYPE_6__ {size_t num; TYPE_4__* array; } ;
struct TYPE_8__ {int num; int array; } ;
struct TYPE_7__ {int num; int array; } ;
struct TYPE_9__ {TYPE_1__ children; TYPE_3__ times_between_calls; scalar_t__ expected_time_between_calls; TYPE_2__ times; } ;
typedef TYPE_4__ profiler_snapshot_entry_t ;


 int profiler_time_entry_compare ;
 int qsort (int ,int ,int,int ) ;

__attribute__((used)) static void sort_snapshot_entry(profiler_snapshot_entry_t *entry)
{
 qsort(entry->times.array, entry->times.num, sizeof(profiler_time_entry),
       profiler_time_entry_compare);

 if (entry->expected_time_between_calls)
  qsort(entry->times_between_calls.array,
        entry->times_between_calls.num,
        sizeof(profiler_time_entry), profiler_time_entry_compare);

 for (size_t i = 0; i < entry->children.num; i++)
  sort_snapshot_entry(&entry->children.array[i]);
}
