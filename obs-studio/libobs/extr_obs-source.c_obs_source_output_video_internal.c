
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct obs_source_frame {int refs; } ;
struct TYPE_5__ {int async_active; int async_mutex; int async_frames; } ;
typedef TYPE_1__ obs_source_t ;


 struct obs_source_frame* cache_video (TYPE_1__*,struct obs_source_frame const*) ;
 int da_push_back (int ,struct obs_source_frame**) ;
 int obs_source_frame_destroy (struct obs_source_frame*) ;
 int obs_source_valid (TYPE_1__*,char*) ;
 scalar_t__ os_atomic_dec_long (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
obs_source_output_video_internal(obs_source_t *source,
     const struct obs_source_frame *frame)
{
 if (!obs_source_valid(source, "obs_source_output_video"))
  return;

 if (!frame) {
  source->async_active = 0;
  return;
 }

 struct obs_source_frame *output = !!frame ? cache_video(source, frame)
        : ((void*)0);


 pthread_mutex_lock(&source->async_mutex);
 if (output) {
  if (os_atomic_dec_long(&output->refs) == 0) {
   obs_source_frame_destroy(output);
   output = ((void*)0);
  } else {
   da_push_back(source->async_frames, &output);
   source->async_active = 1;
  }
 }
 pthread_mutex_unlock(&source->async_mutex);
}
