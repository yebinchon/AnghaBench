
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct obs_source_frame {scalar_t__ timestamp; } ;
struct async_delay_data {int reset_video; scalar_t__ last_video_ts; int video_delay_reached; scalar_t__ interval; int video_frames; int context; } ;
typedef int obs_source_t ;


 int circlebuf_peek_front (int *,struct obs_source_frame**,int) ;
 int circlebuf_pop_front (int *,int *,int) ;
 int circlebuf_push_back (int *,struct obs_source_frame**,int) ;
 int free_video_data (struct async_delay_data*,int *) ;
 scalar_t__ is_timestamp_jump (scalar_t__,scalar_t__) ;
 int * obs_filter_get_parent (int ) ;

__attribute__((used)) static struct obs_source_frame *
async_delay_filter_video(void *data, struct obs_source_frame *frame)
{
 struct async_delay_data *filter = data;
 obs_source_t *parent = obs_filter_get_parent(filter->context);
 struct obs_source_frame *output;
 uint64_t cur_interval;

 if (filter->reset_video ||
     is_timestamp_jump(frame->timestamp, filter->last_video_ts)) {
  free_video_data(filter, parent);
  filter->video_delay_reached = 0;
  filter->reset_video = 0;
 }

 filter->last_video_ts = frame->timestamp;

 circlebuf_push_back(&filter->video_frames, &frame,
       sizeof(struct obs_source_frame *));
 circlebuf_peek_front(&filter->video_frames, &output,
        sizeof(struct obs_source_frame *));

 cur_interval = frame->timestamp - output->timestamp;
 if (!filter->video_delay_reached && cur_interval < filter->interval)
  return ((void*)0);

 circlebuf_pop_front(&filter->video_frames, ((void*)0),
       sizeof(struct obs_source_frame *));

 if (!filter->video_delay_reached)
  filter->video_delay_reached = 1;

 return output;
}
