
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_context {int dummy; } ;


 int active_log_contexts ;
 int cached_log_contexts ;
 int da_erase_item (int ,struct log_context**) ;
 int da_push_back (int ,struct log_context**) ;
 int log_contexts_mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void destroy_log_context(struct log_context *log_context)
{
 pthread_mutex_lock(&log_contexts_mutex);
 da_erase_item(active_log_contexts, &log_context);
 da_push_back(cached_log_contexts, &log_context);
 pthread_mutex_unlock(&log_contexts_mutex);
}
