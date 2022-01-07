
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
typedef scalar_t__ time_t ;
struct TYPE_3__ {scalar_t__ is_animated_gif; } ;
struct mask_filter_data {float update_time_elapsed; scalar_t__ image_file_timestamp; void* last_time; TYPE_1__ image; int image_file; } ;


 scalar_t__ get_modified_timestamp (int ) ;
 int gs_image_file_tick (TYPE_1__*,void*) ;
 int gs_image_file_update_texture (TYPE_1__*) ;
 int mask_filter_image_load (struct mask_filter_data*) ;
 int obs_enter_graphics () ;
 void* obs_get_video_frame_time () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void mask_filter_tick(void *data, float seconds)
{
 struct mask_filter_data *filter = data;
 filter->update_time_elapsed += seconds;

 if (filter->update_time_elapsed >= 1.0f) {
  time_t t = get_modified_timestamp(filter->image_file);
  filter->update_time_elapsed = 0.0f;

  if (filter->image_file_timestamp != t) {
   mask_filter_image_load(filter);
  }
 }

 if (filter->image.is_animated_gif) {
  uint64_t cur_time = obs_get_video_frame_time();

  if (!filter->last_time)
   filter->last_time = cur_time;

  gs_image_file_tick(&filter->image,
       cur_time - filter->last_time);
  obs_enter_graphics();
  gs_image_file_update_texture(&filter->image);
  obs_leave_graphics();

  filter->last_time = cur_time;
 }
}
