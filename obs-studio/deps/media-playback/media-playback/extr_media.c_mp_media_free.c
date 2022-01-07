
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mutex; int format_name; int path; int * scale_pic; int swscale; int sem; int fmt; int a; int v; } ;
typedef TYPE_1__ mp_media_t ;


 int av_freep (int *) ;
 int avformat_close_input (int *) ;
 int bfree (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int mp_decode_free (int *) ;
 int mp_kill_thread (TYPE_1__*) ;
 int mp_media_stop (TYPE_1__*) ;
 int os_sem_destroy (int ) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init_value (int *) ;
 int sws_freeContext (int ) ;

void mp_media_free(mp_media_t *media)
{
 if (!media)
  return;

 mp_media_stop(media);
 mp_kill_thread(media);
 mp_decode_free(&media->v);
 mp_decode_free(&media->a);
 avformat_close_input(&media->fmt);
 pthread_mutex_destroy(&media->mutex);
 os_sem_destroy(media->sem);
 sws_freeContext(media->swscale);
 av_freep(&media->scale_pic[0]);
 bfree(media->path);
 bfree(media->format_name);
 memset(media, 0, sizeof(*media));
 pthread_mutex_init_value(&media->mutex);
}
