
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num; } ;
struct obs_core_video {int gpu_encoder_mutex; int gpu_encode_inactive; TYPE_2__ gpu_encoders; int video; int gpu_encoder_active; } ;
typedef int obs_encoder_t ;
struct TYPE_3__ {struct obs_core_video video; } ;


 int da_erase_item (TYPE_2__,int **) ;
 int free_gpu_encoding (struct obs_core_video*) ;
 TYPE_1__* obs ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int os_atomic_dec_long (int *) ;
 int os_event_wait (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stop_gpu_encoding_thread (struct obs_core_video*) ;
 int video_output_dec_texture_encoders (int ) ;

void stop_gpu_encode(obs_encoder_t *encoder)
{
 struct obs_core_video *video = &obs->video;
 bool call_free = 0;

 os_atomic_dec_long(&video->gpu_encoder_active);
 video_output_dec_texture_encoders(video->video);

 pthread_mutex_lock(&video->gpu_encoder_mutex);
 da_erase_item(video->gpu_encoders, &encoder);
 if (!video->gpu_encoders.num)
  call_free = 1;
 pthread_mutex_unlock(&video->gpu_encoder_mutex);

 os_event_wait(video->gpu_encode_inactive);

 if (call_free) {
  stop_gpu_encoding_thread(video);

  obs_enter_graphics();
  pthread_mutex_lock(&video->gpu_encoder_mutex);
  free_gpu_encoding(video);
  pthread_mutex_unlock(&video->gpu_encoder_mutex);
  obs_leave_graphics();
 }
}
