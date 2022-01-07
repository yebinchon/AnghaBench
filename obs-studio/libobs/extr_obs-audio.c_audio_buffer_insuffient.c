
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ audio_render; } ;
struct obs_source {int audio_pending; int audio_ts; TYPE_1__* audio_input_buf; TYPE_2__ info; } ;
struct TYPE_3__ {size_t size; } ;


 size_t AUDIO_OUTPUT_FRAMES ;
 size_t convert_time_to_frames (size_t,int) ;

__attribute__((used)) static bool audio_buffer_insuffient(struct obs_source *source,
        size_t sample_rate, uint64_t min_ts)
{
 size_t total_floats = AUDIO_OUTPUT_FRAMES;
 size_t size;

 if (source->info.audio_render || source->audio_pending ||
     !source->audio_ts) {
  return 0;
 }

 if (source->audio_ts != min_ts && source->audio_ts != (min_ts - 1)) {
  size_t start_point = convert_time_to_frames(
   sample_rate, source->audio_ts - min_ts);
  if (start_point >= AUDIO_OUTPUT_FRAMES)
   return 0;

  total_floats -= start_point;
 }

 size = total_floats * sizeof(float);

 if (source->audio_input_buf[0].size < size) {
  source->audio_pending = 1;
  return 1;
 }

 return 0;
}
