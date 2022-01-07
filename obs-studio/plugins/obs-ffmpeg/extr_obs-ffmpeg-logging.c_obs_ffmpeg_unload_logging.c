
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num; int * array; } ;


 TYPE_1__ active_log_contexts ;
 int av_log_default_callback ;
 int av_log_set_callback (int ) ;
 int bfree (int ) ;
 TYPE_1__ cached_log_contexts ;
 int da_free (TYPE_1__) ;
 int log_contexts_mutex ;
 int logging_initialized ;
 int pthread_mutex_destroy (int *) ;

void obs_ffmpeg_unload_logging(void)
{
 if (!logging_initialized)
  return;

 logging_initialized = 0;

 av_log_set_callback(av_log_default_callback);
 pthread_mutex_destroy(&log_contexts_mutex);

 for (size_t i = 0; i < active_log_contexts.num; i++) {
  bfree(active_log_contexts.array[i]);
 }
 for (size_t i = 0; i < cached_log_contexts.num; i++) {
  bfree(cached_log_contexts.array[i]);
 }

 da_free(active_log_contexts);
 da_free(cached_log_contexts);
}
