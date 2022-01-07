
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int active_log_contexts ;
 int av_log_set_callback (int ) ;
 int cached_log_contexts ;
 int da_init (int ) ;
 int ffmpeg_log_callback ;
 int log_contexts_mutex ;
 int logging_initialized ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

void obs_ffmpeg_load_logging(void)
{
 da_init(active_log_contexts);
 da_init(cached_log_contexts);

 if (pthread_mutex_init(&log_contexts_mutex, ((void*)0)) == 0) {
  av_log_set_callback(ffmpeg_log_callback);
  logging_initialized = 1;
 }
}
