
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_context_data {int rename_cache_mutex; int private; scalar_t__ name; int rename_cache; } ;


 int da_push_back (int ,scalar_t__*) ;
 scalar_t__ dup_name (char const*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_context_data_setname(struct obs_context_data *context,
         const char *name)
{
 pthread_mutex_lock(&context->rename_cache_mutex);

 if (context->name)
  da_push_back(context->rename_cache, &context->name);
 context->name = dup_name(name, context->private);

 pthread_mutex_unlock(&context->rename_cache_mutex);
}
