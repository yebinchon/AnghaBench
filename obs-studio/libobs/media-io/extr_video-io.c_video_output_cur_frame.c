
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t cache_size; } ;
struct TYPE_3__ {size_t num; struct video_input* array; } ;
struct video_output {size_t first_added; size_t available_frames; size_t last_added; int data_mutex; int skipped_frames; TYPE_2__ info; scalar_t__ frame_time; int input_mutex; TYPE_1__ inputs; struct cached_frame_info* cache; } ;
struct video_input {int param; int (* callback ) (int ,struct video_data*) ;} ;
struct video_data {int timestamp; } ;
struct cached_frame_info {scalar_t__ count; int skipped; struct video_data frame; } ;


 int os_atomic_inc_long (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ scale_video_output (struct video_input*,struct video_data*) ;
 int stub1 (int ,struct video_data*) ;

__attribute__((used)) static inline bool video_output_cur_frame(struct video_output *video)
{
 struct cached_frame_info *frame_info;
 bool complete;
 bool skipped;



 pthread_mutex_lock(&video->data_mutex);

 frame_info = &video->cache[video->first_added];

 pthread_mutex_unlock(&video->data_mutex);



 pthread_mutex_lock(&video->input_mutex);

 for (size_t i = 0; i < video->inputs.num; i++) {
  struct video_input *input = video->inputs.array + i;
  struct video_data frame = frame_info->frame;

  if (scale_video_output(input, &frame))
   input->callback(input->param, &frame);
 }

 pthread_mutex_unlock(&video->input_mutex);



 pthread_mutex_lock(&video->data_mutex);

 frame_info->frame.timestamp += video->frame_time;
 complete = --frame_info->count == 0;
 skipped = frame_info->skipped > 0;

 if (complete) {
  if (++video->first_added == video->info.cache_size)
   video->first_added = 0;

  if (++video->available_frames == video->info.cache_size)
   video->last_added = video->first_added;
 } else if (skipped) {
  --frame_info->skipped;
  os_atomic_inc_long(&video->skipped_frames);
 }

 pthread_mutex_unlock(&video->data_mutex);



 return complete;
}
