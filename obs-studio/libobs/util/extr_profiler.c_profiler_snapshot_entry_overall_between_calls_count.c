
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int overall_between_calls_count; } ;
typedef TYPE_1__ profiler_snapshot_entry_t ;



uint64_t profiler_snapshot_entry_overall_between_calls_count(
 profiler_snapshot_entry_t *entry)
{
 return entry ? entry->overall_between_calls_count : 0;
}
