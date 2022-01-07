
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct log_context {void* context; char* str; int print_prefix; } ;
struct TYPE_6__ {size_t num; struct log_context** array; } ;
struct TYPE_5__ {size_t num; struct log_context** array; } ;


 TYPE_1__ active_log_contexts ;
 struct log_context* bzalloc (int) ;
 TYPE_2__ cached_log_contexts ;
 int da_pop_back (TYPE_2__) ;
 int da_push_back (TYPE_1__,struct log_context**) ;
 int log_contexts_mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static struct log_context *create_or_fetch_log_context(void *context)
{
 pthread_mutex_lock(&log_contexts_mutex);
 for (size_t i = 0; i < active_log_contexts.num; i++) {
  if (context == active_log_contexts.array[i]->context) {
   pthread_mutex_unlock(&log_contexts_mutex);
   return active_log_contexts.array[i];
  }
 }

 struct log_context *new_log_context = ((void*)0);

 size_t cnt = cached_log_contexts.num;
 if (!!cnt) {
  new_log_context = cached_log_contexts.array[cnt - 1];
  da_pop_back(cached_log_contexts);
 }

 if (!new_log_context)
  new_log_context = bzalloc(sizeof(struct log_context));

 new_log_context->context = context;
 new_log_context->str[0] = '\0';
 new_log_context->print_prefix = 1;

 da_push_back(active_log_contexts, &new_log_context);

 pthread_mutex_unlock(&log_contexts_mutex);

 return new_log_context;
}
