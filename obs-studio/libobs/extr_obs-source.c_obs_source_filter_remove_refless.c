
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct calldata {int dummy; } ;
typedef int stack ;
struct TYPE_11__ {int data; int name; int signals; } ;
struct TYPE_10__ {int (* filter_remove ) (int ,int *) ;int id; } ;
struct TYPE_13__ {TYPE_3__** array; } ;
struct TYPE_12__ {int * filter_target; int * filter_parent; TYPE_2__ context; TYPE_1__ info; int filter_mutex; TYPE_6__ filters; } ;
typedef TYPE_3__ obs_source_t ;


 size_t DARRAY_INVALID ;
 int LOG_DEBUG ;
 int blog (int ,char*,int ,int ,int ) ;
 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_set_ptr (struct calldata*,char*,TYPE_3__*) ;
 int da_erase (TYPE_6__,size_t) ;
 size_t da_find (TYPE_6__,TYPE_3__**,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal_handler_signal (int ,char*,struct calldata*) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static bool obs_source_filter_remove_refless(obs_source_t *source,
          obs_source_t *filter)
{
 struct calldata cd;
 uint8_t stack[128];
 size_t idx;

 pthread_mutex_lock(&source->filter_mutex);

 idx = da_find(source->filters, &filter, 0);
 if (idx == DARRAY_INVALID) {
  pthread_mutex_unlock(&source->filter_mutex);
  return 0;
 }

 if (idx > 0) {
  obs_source_t *prev = source->filters.array[idx - 1];
  prev->filter_target = filter->filter_target;
 }

 da_erase(source->filters, idx);

 pthread_mutex_unlock(&source->filter_mutex);

 calldata_init_fixed(&cd, stack, sizeof(stack));
 calldata_set_ptr(&cd, "source", source);
 calldata_set_ptr(&cd, "filter", filter);

 signal_handler_signal(source->context.signals, "filter_remove", &cd);

 blog(LOG_DEBUG, "- filter '%s' (%s) removed from source '%s'",
      filter->context.name, filter->info.id, source->context.name);

 if (filter->info.filter_remove)
  filter->info.filter_remove(filter->context.data,
        filter->filter_parent);

 filter->filter_parent = ((void*)0);
 filter->filter_target = ((void*)0);
 return 1;
}
