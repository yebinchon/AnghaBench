
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct obs_source {int dummy; } ;
struct TYPE_8__ {size_t num; struct obs_source** array; } ;
struct TYPE_9__ {int filter_mutex; TYPE_1__ filters; } ;
typedef TYPE_2__ obs_source_t ;
typedef int (* obs_source_enum_proc_t ) (TYPE_2__*,struct obs_source*,void*) ;


 int obs_ptr_valid (int (*) (TYPE_2__*,struct obs_source*,void*),char*) ;
 int obs_source_valid (TYPE_2__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_source_enum_filters(obs_source_t *source,
        obs_source_enum_proc_t callback, void *param)
{
 if (!obs_source_valid(source, "obs_source_enum_filters"))
  return;
 if (!obs_ptr_valid(callback, "obs_source_enum_filters"))
  return;

 pthread_mutex_lock(&source->filter_mutex);

 for (size_t i = source->filters.num; i > 0; i--) {
  struct obs_source *filter = source->filters.array[i - 1];
  callback(source, filter, param);
 }

 pthread_mutex_unlock(&source->filter_mutex);
}
