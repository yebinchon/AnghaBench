
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pthread_mutex_t ;
struct TYPE_8__ {TYPE_2__* prev_call; int * entry; int * mutex; } ;
typedef TYPE_1__ profile_root_entry ;
typedef int profile_entry ;
struct TYPE_9__ {int name; } ;
typedef TYPE_2__ profile_call ;


 int free_call_context (TYPE_2__*) ;
 TYPE_1__* get_root_entry (int ) ;
 int lock_root () ;
 int merge_call (int *,TYPE_2__*,TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int root_mutex ;

__attribute__((used)) static void merge_context(profile_call *context)
{
 pthread_mutex_t *mutex = ((void*)0);
 profile_entry *entry = ((void*)0);
 profile_call *prev_call = ((void*)0);

 if (!lock_root()) {
  free_call_context(context);
  return;
 }

 profile_root_entry *r_entry = get_root_entry(context->name);

 mutex = r_entry->mutex;
 entry = r_entry->entry;
 prev_call = r_entry->prev_call;

 r_entry->prev_call = context;

 pthread_mutex_lock(mutex);
 pthread_mutex_unlock(&root_mutex);

 merge_call(entry, context, prev_call);

 pthread_mutex_unlock(mutex);

 free_call_context(prev_call);
}
