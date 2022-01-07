
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int profiler_snapshot_t ;


 int profile_print_entry ;
 int profile_print_func (char*,int ,int *) ;

void profiler_print(profiler_snapshot_t *snap)
{
 profile_print_func("== Profiler Results =============================",
      profile_print_entry, snap);
}
