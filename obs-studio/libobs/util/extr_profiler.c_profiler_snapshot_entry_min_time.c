
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int min_time; } ;
typedef TYPE_1__ profiler_snapshot_entry_t ;



uint64_t profiler_snapshot_entry_min_time(profiler_snapshot_entry_t *entry)
{
 return entry ? entry->min_time : 0;
}
