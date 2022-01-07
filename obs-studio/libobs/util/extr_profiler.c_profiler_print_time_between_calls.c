
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int profiler_snapshot_t ;


 int profile_print_entry_expected ;
 int profile_print_func (char*,int ,int *) ;

void profiler_print_time_between_calls(profiler_snapshot_t *snap)
{
 profile_print_func("== Profiler Time Between Calls ==================",
      profile_print_entry_expected, snap);
}
