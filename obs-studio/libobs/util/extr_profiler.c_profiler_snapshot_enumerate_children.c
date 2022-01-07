
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num; int * array; } ;
struct TYPE_5__ {TYPE_1__ children; } ;
typedef TYPE_2__ profiler_snapshot_entry_t ;
typedef int (* profiler_entry_enum_func ) (void*,int *) ;



void profiler_snapshot_enumerate_children(profiler_snapshot_entry_t *entry,
       profiler_entry_enum_func func,
       void *context)
{
 if (!entry)
  return;

 for (size_t i = 0; i < entry->children.num; i++)
  if (!func(context, &entry->children.array[i]))
   break;
}
