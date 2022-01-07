
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {size_t num; int * array; } ;
struct TYPE_9__ {TYPE_5__ roots; } ;
typedef TYPE_2__ profiler_snapshot_t ;
struct TYPE_10__ {size_t num; TYPE_1__* array; } ;
struct TYPE_8__ {int * mutex; int entry; } ;


 int add_entry_to_snapshot (int ,int ) ;
 TYPE_2__* bzalloc (int) ;
 int da_push_back_new (TYPE_5__) ;
 int da_reserve (TYPE_5__,size_t) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_3__ root_entries ;
 int root_mutex ;
 int sort_snapshot_entry (int *) ;

profiler_snapshot_t *profile_snapshot_create(void)
{
 profiler_snapshot_t *snap = bzalloc(sizeof(profiler_snapshot_t));

 pthread_mutex_lock(&root_mutex);
 da_reserve(snap->roots, root_entries.num);
 for (size_t i = 0; i < root_entries.num; i++) {
  pthread_mutex_lock(root_entries.array[i].mutex);
  add_entry_to_snapshot(root_entries.array[i].entry,
          da_push_back_new(snap->roots));
  pthread_mutex_unlock(root_entries.array[i].mutex);
 }
 pthread_mutex_unlock(&root_mutex);

 for (size_t i = 0; i < snap->roots.num; i++)
  sort_snapshot_entry(&snap->roots.array[i]);

 return snap;
}
