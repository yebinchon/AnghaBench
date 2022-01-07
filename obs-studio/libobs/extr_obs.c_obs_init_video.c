
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct video_output_info {int dummy; } ;
struct obs_video_info {scalar_t__ gpu_conversion; int scale_type; int output_height; int output_width; int base_height; int base_width; } ;
struct obs_core_video {int thread_initialized; struct obs_video_info ovi; int video_thread; int gpu_encoder_mutex; int graphics; int video; int scale_type; scalar_t__ gpu_conversion; int output_height; int output_width; int base_height; int base_width; } ;
typedef int pthread_mutexattr_t ;
struct TYPE_3__ {struct obs_core_video video; } ;


 int LOG_ERROR ;
 int OBS_VIDEO_FAIL ;
 int OBS_VIDEO_INVALID_PARAM ;
 int OBS_VIDEO_SUCCESS ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int VIDEO_OUTPUT_INVALIDPARAM ;
 int VIDEO_OUTPUT_SUCCESS ;
 int blog (int ,char*) ;
 int gs_enter_context (int ) ;
 int gs_leave_context () ;
 int make_video_info (struct video_output_info*,struct obs_video_info*) ;
 TYPE_1__* obs ;
 int obs_graphics_thread ;
 int obs_init_gpu_conversion (struct obs_video_info*) ;
 int obs_init_textures (struct obs_video_info*) ;
 int pthread_create (int *,int *,int ,TYPE_1__*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;
 int set_video_matrix (struct obs_core_video*,struct obs_video_info*) ;
 int video_output_open (int *,struct video_output_info*) ;

__attribute__((used)) static int obs_init_video(struct obs_video_info *ovi)
{
 struct obs_core_video *video = &obs->video;
 struct video_output_info vi;
 pthread_mutexattr_t attr;
 int errorcode;

 make_video_info(&vi, ovi);
 video->base_width = ovi->base_width;
 video->base_height = ovi->base_height;
 video->output_width = ovi->output_width;
 video->output_height = ovi->output_height;
 video->gpu_conversion = ovi->gpu_conversion;
 video->scale_type = ovi->scale_type;

 set_video_matrix(video, ovi);

 errorcode = video_output_open(&video->video, &vi);

 if (errorcode != VIDEO_OUTPUT_SUCCESS) {
  if (errorcode == VIDEO_OUTPUT_INVALIDPARAM) {
   blog(LOG_ERROR, "Invalid video parameters specified");
   return OBS_VIDEO_INVALID_PARAM;
  } else {
   blog(LOG_ERROR, "Could not open video output");
  }
  return OBS_VIDEO_FAIL;
 }

 gs_enter_context(video->graphics);

 if (ovi->gpu_conversion && !obs_init_gpu_conversion(ovi))
  return OBS_VIDEO_FAIL;
 if (!obs_init_textures(ovi))
  return OBS_VIDEO_FAIL;

 gs_leave_context();

 if (pthread_mutexattr_init(&attr) != 0)
  return OBS_VIDEO_FAIL;
 if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
  return OBS_VIDEO_FAIL;
 if (pthread_mutex_init(&video->gpu_encoder_mutex, ((void*)0)) < 0)
  return OBS_VIDEO_FAIL;

 errorcode = pthread_create(&video->video_thread, ((void*)0),
       obs_graphics_thread, obs);
 if (errorcode != 0)
  return OBS_VIDEO_FAIL;

 video->thread_initialized = 1;
 video->ovi = *ovi;
 return OBS_VIDEO_SUCCESS;
}
