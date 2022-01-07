
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int filter_mutex; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum obs_order_movement { ____Placeholder_obs_order_movement } obs_order_movement ;


 int move_filter_dir (TYPE_1__*,TYPE_1__*,int) ;
 int obs_ptr_valid (TYPE_1__*,char*) ;
 int obs_source_dosignal (TYPE_1__*,int *,char*) ;
 int obs_source_valid (TYPE_1__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_source_filter_set_order(obs_source_t *source, obs_source_t *filter,
     enum obs_order_movement movement)
{
 bool success;

 if (!obs_source_valid(source, "obs_source_filter_set_order"))
  return;
 if (!obs_ptr_valid(filter, "obs_source_filter_set_order"))
  return;

 pthread_mutex_lock(&source->filter_mutex);
 success = move_filter_dir(source, filter, movement);
 pthread_mutex_unlock(&source->filter_mutex);

 if (success)
  obs_source_dosignal(source, ((void*)0), "reorder_filters");
}
