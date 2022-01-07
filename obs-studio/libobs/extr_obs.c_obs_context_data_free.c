
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; int * array; } ;
struct obs_context_data {TYPE_1__ rename_cache; int name; int rename_cache_mutex; int settings; int procs; int signals; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;
 int memset (struct obs_context_data*,int ,int) ;
 int obs_context_data_remove (struct obs_context_data*) ;
 int obs_data_release (int ) ;
 int obs_hotkeys_context_release (struct obs_context_data*) ;
 int proc_handler_destroy (int ) ;
 int pthread_mutex_destroy (int *) ;
 int signal_handler_destroy (int ) ;

void obs_context_data_free(struct obs_context_data *context)
{
 obs_hotkeys_context_release(context);
 signal_handler_destroy(context->signals);
 proc_handler_destroy(context->procs);
 obs_data_release(context->settings);
 obs_context_data_remove(context);
 pthread_mutex_destroy(&context->rename_cache_mutex);
 bfree(context->name);

 for (size_t i = 0; i < context->rename_cache.num; i++)
  bfree(context->rename_cache.array[i]);
 da_free(context->rename_cache);

 memset(context, 0, sizeof(*context));
}
