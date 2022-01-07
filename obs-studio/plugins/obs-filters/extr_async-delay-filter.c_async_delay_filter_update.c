
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct async_delay_data {scalar_t__ interval; int reset_audio; int reset_video; int video_delay_reached; int audio_delay_reached; int context; } ;
typedef int obs_data_t ;


 scalar_t__ MSEC_TO_NSEC ;
 int SETTING_DELAY_MS ;
 int free_video_data (struct async_delay_data*,int ) ;
 scalar_t__ obs_data_get_int (int *,int ) ;
 int obs_filter_get_parent (int ) ;

__attribute__((used)) static void async_delay_filter_update(void *data, obs_data_t *settings)
{
 struct async_delay_data *filter = data;
 uint64_t new_interval =
  (uint64_t)obs_data_get_int(settings, SETTING_DELAY_MS) *
  MSEC_TO_NSEC;

 if (new_interval < filter->interval)
  free_video_data(filter, obs_filter_get_parent(filter->context));

 filter->reset_audio = 1;
 filter->reset_video = 1;
 filter->interval = new_interval;
 filter->video_delay_reached = 0;
 filter->audio_delay_reached = 0;
}
