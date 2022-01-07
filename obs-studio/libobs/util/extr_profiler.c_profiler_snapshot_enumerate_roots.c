
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num; int * array; } ;
struct TYPE_5__ {TYPE_1__ roots; } ;
typedef TYPE_2__ profiler_snapshot_t ;
typedef int (* profiler_entry_enum_func ) (void*,int *) ;



void profiler_snapshot_enumerate_roots(profiler_snapshot_t *snap,
           profiler_entry_enum_func func,
           void *context)
{
 if (!snap)
  return;

 for (size_t i = 0; i < snap->roots.num; i++)
  if (!func(context, &snap->roots.array[i]))
   break;
}
