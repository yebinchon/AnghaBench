
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_source_frame {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct async_delay_data {TYPE_1__ video_frames; } ;
typedef int obs_source_t ;


 int circlebuf_pop_front (TYPE_1__*,struct obs_source_frame**,int) ;
 int obs_source_release_frame (int *,struct obs_source_frame*) ;

__attribute__((used)) static void free_video_data(struct async_delay_data *filter,
       obs_source_t *parent)
{
 while (filter->video_frames.size) {
  struct obs_source_frame *frame;

  circlebuf_pop_front(&filter->video_frames, &frame,
        sizeof(struct obs_source_frame *));
  obs_source_release_frame(parent, frame);
 }
}
