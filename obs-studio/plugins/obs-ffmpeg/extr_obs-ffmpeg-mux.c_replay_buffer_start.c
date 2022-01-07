
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {long long max_time; int max_size; int output; scalar_t__ total_bytes; int capturing; int active; } ;
typedef int obs_data_t ;


 int obs_data_get_int (int *,char*) ;
 int obs_data_release (int *) ;
 int obs_output_begin_data_capture (int ,int ) ;
 int obs_output_can_begin_data_capture (int ,int ) ;
 int * obs_output_get_settings (int ) ;
 int obs_output_initialize_encoders (int ,int ) ;
 int os_atomic_set_bool (int *,int) ;

__attribute__((used)) static bool replay_buffer_start(void *data)
{
 struct ffmpeg_muxer *stream = data;

 if (!obs_output_can_begin_data_capture(stream->output, 0))
  return 0;
 if (!obs_output_initialize_encoders(stream->output, 0))
  return 0;

 obs_data_t *s = obs_output_get_settings(stream->output);
 stream->max_time = obs_data_get_int(s, "max_time_sec") * 1000000LL;
 stream->max_size = obs_data_get_int(s, "max_size_mb") * (1024 * 1024);
 obs_data_release(s);

 os_atomic_set_bool(&stream->active, 1);
 os_atomic_set_bool(&stream->capturing, 1);
 stream->total_bytes = 0;
 obs_output_begin_data_capture(stream->output, 0);

 return 1;
}
