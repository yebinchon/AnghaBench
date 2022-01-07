
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;


 int av_log_default_callback ;
 int av_log_set_callback (int ) ;
 int log_lock ;
 struct mpv_global* log_mpv_instance ;
 int log_root ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int talloc_free (int ) ;

void uninit_libav(struct mpv_global *global)
{
    pthread_mutex_lock(&log_lock);
    if (log_mpv_instance == global) {
        av_log_set_callback(av_log_default_callback);
        log_mpv_instance = ((void*)0);
        talloc_free(log_root);
    }
    pthread_mutex_unlock(&log_lock);
}
