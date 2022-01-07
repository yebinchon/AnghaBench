
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_context_data {int private; int type; void* hotkey_data; void* settings; int name; int procs; int signals; int rename_cache_mutex; } ;
typedef int obs_data_t ;
typedef enum obs_obj_type { ____Placeholder_obs_obj_type } obs_obj_type ;


 int assert (struct obs_context_data*) ;
 int dup_name (char const*,int) ;
 int memset (struct obs_context_data*,int ,int) ;
 void* obs_data_newref (int *) ;
 int proc_handler_create () ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutex_init_value (int *) ;
 int signal_handler_create () ;

__attribute__((used)) static inline bool obs_context_data_init_wrap(struct obs_context_data *context,
           enum obs_obj_type type,
           obs_data_t *settings,
           const char *name,
           obs_data_t *hotkey_data,
           bool private)
{
 assert(context);
 memset(context, 0, sizeof(*context));
 context->private = private;
 context->type = type;

 pthread_mutex_init_value(&context->rename_cache_mutex);
 if (pthread_mutex_init(&context->rename_cache_mutex, ((void*)0)) < 0)
  return 0;

 context->signals = signal_handler_create();
 if (!context->signals)
  return 0;

 context->procs = proc_handler_create();
 if (!context->procs)
  return 0;

 context->name = dup_name(name, private);
 context->settings = obs_data_newref(settings);
 context->hotkey_data = obs_data_newref(hotkey_data);
 return 1;
}
