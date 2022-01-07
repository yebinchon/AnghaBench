
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int * log; } ;


 char* LIB_PREFIX ;
 int av_log_set_callback (int ) ;
 int avdevice_register_all () ;
 int avformat_network_init () ;
 void* log_decaudio ;
 void* log_decvideo ;
 void* log_demuxer ;
 int log_lock ;
 struct mpv_global* log_mpv_instance ;
 int * log_root ;
 void* mp_log_new (int *,int *,char*) ;
 int mp_msg_av_log_callback ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void init_libav(struct mpv_global *global)
{
    pthread_mutex_lock(&log_lock);
    if (!log_mpv_instance) {
        log_mpv_instance = global;
        log_root = mp_log_new(((void*)0), global->log, LIB_PREFIX);
        log_decaudio = mp_log_new(log_root, log_root, "audio");
        log_decvideo = mp_log_new(log_root, log_root, "video");
        log_demuxer = mp_log_new(log_root, log_root, "demuxer");
        av_log_set_callback(mp_msg_av_log_callback);
    }
    pthread_mutex_unlock(&log_lock);

    avformat_network_init();




}
