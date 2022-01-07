
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_output {int initialized; int thread; int update_semaphore; int input_mutex; int data_mutex; scalar_t__ frame_time; int info; } ;
typedef struct video_output video_t ;
typedef scalar_t__ uint64_t ;
struct video_output_info {scalar_t__ fps_num; scalar_t__ fps_den; } ;
typedef int pthread_mutexattr_t ;


 int PTHREAD_MUTEX_RECURSIVE ;
 int VIDEO_OUTPUT_FAIL ;
 int VIDEO_OUTPUT_INVALIDPARAM ;
 int VIDEO_OUTPUT_SUCCESS ;
 struct video_output* bzalloc (int) ;
 int init_cache (struct video_output*) ;
 int memcpy (int *,struct video_output_info*,int) ;
 scalar_t__ os_sem_init (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,struct video_output*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;
 int valid_video_params (struct video_output_info*) ;
 int video_output_close (struct video_output*) ;
 int video_thread ;

int video_output_open(video_t **video, struct video_output_info *info)
{
 struct video_output *out;
 pthread_mutexattr_t attr;

 if (!valid_video_params(info))
  return VIDEO_OUTPUT_INVALIDPARAM;

 out = bzalloc(sizeof(struct video_output));
 if (!out)
  goto fail;

 memcpy(&out->info, info, sizeof(struct video_output_info));
 out->frame_time = (uint64_t)(1000000000.0 * (double)info->fps_den /
         (double)info->fps_num);
 out->initialized = 0;

 if (pthread_mutexattr_init(&attr) != 0)
  goto fail;
 if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
  goto fail;
 if (pthread_mutex_init(&out->data_mutex, &attr) != 0)
  goto fail;
 if (pthread_mutex_init(&out->input_mutex, &attr) != 0)
  goto fail;
 if (os_sem_init(&out->update_semaphore, 0) != 0)
  goto fail;
 if (pthread_create(&out->thread, ((void*)0), video_thread, out) != 0)
  goto fail;

 init_cache(out);

 out->initialized = 1;
 *video = out;
 return VIDEO_OUTPUT_SUCCESS;

fail:
 video_output_close(out);
 return VIDEO_OUTPUT_FAIL;
}
