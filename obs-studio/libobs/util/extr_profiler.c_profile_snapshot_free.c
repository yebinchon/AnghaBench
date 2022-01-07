
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t num; int * array; } ;
struct TYPE_5__ {TYPE_3__ roots; } ;
typedef TYPE_1__ profiler_snapshot_t ;


 int bfree (TYPE_1__*) ;
 int da_free (TYPE_3__) ;
 int free_snapshot_entry (int *) ;

void profile_snapshot_free(profiler_snapshot_t *snap)
{
 if (!snap)
  return;

 for (size_t i = 0; i < snap->roots.num; i++)
  free_snapshot_entry(&snap->roots.array[i]);

 da_free(snap->roots);
 bfree(snap);
}
