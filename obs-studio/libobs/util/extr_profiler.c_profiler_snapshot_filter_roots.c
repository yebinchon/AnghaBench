
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t num; TYPE_3__* array; } ;
struct TYPE_5__ {TYPE_4__ roots; } ;
typedef TYPE_1__ profiler_snapshot_t ;
typedef int (* profiler_name_filter_func ) (void*,int ,int*) ;
struct TYPE_6__ {int name; } ;


 int da_erase (TYPE_4__,size_t) ;
 int free_snapshot_entry (TYPE_3__*) ;

void profiler_snapshot_filter_roots(profiler_snapshot_t *snap,
        profiler_name_filter_func func, void *data)
{
 for (size_t i = 0; i < snap->roots.num;) {
  bool remove = 0;
  bool res = func(data, snap->roots.array[i].name, &remove);

  if (remove) {
   free_snapshot_entry(&snap->roots.array[i]);
   da_erase(snap->roots, i);
  }

  if (!res)
   break;

  if (!remove)
   i += 1;
 }
}
