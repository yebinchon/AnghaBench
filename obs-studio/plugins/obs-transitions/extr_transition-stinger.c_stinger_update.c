
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct stinger_info {int transition_point_is_frame; int monitoring_type; int fade_style; int mix_b; int mix_a; int media_source; void* transition_point_ns; void* transition_point_frame; } ;
typedef int obs_data_t ;
typedef long long int64_t ;
typedef enum fade_style { ____Placeholder_fade_style } fade_style ;




 scalar_t__ TIMING_FRAME ;
 int mix_a_cross_fade ;
 int mix_a_fade_in_out ;
 int mix_b_cross_fade ;
 int mix_b_fade_in_out ;
 int * obs_data_create () ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 char* obs_data_get_string (int *,char*) ;
 int obs_data_release (int *) ;
 int obs_data_set_string (int *,char*,char const*) ;
 int obs_source_create_private (char*,int *,int *) ;
 int obs_source_release (int ) ;
 int obs_source_set_monitoring_type (int ,int) ;

__attribute__((used)) static void stinger_update(void *data, obs_data_t *settings)
{
 struct stinger_info *s = data;
 const char *path = obs_data_get_string(settings, "path");

 obs_data_t *media_settings = obs_data_create();
 obs_data_set_string(media_settings, "local_file", path);

 obs_source_release(s->media_source);
 s->media_source = obs_source_create_private("ffmpeg_source", ((void*)0),
          media_settings);
 obs_data_release(media_settings);

 int64_t point = obs_data_get_int(settings, "transition_point");

 s->transition_point_is_frame = obs_data_get_int(settings, "tp_type") ==
           TIMING_FRAME;

 if (s->transition_point_is_frame)
  s->transition_point_frame = (uint64_t)point;
 else
  s->transition_point_ns = (uint64_t)(point * 1000000LL);

 s->monitoring_type =
  (int)obs_data_get_int(settings, "audio_monitoring");
 obs_source_set_monitoring_type(s->media_source, s->monitoring_type);

 s->fade_style =
  (enum fade_style)obs_data_get_int(settings, "audio_fade_style");

 switch (s->fade_style) {
 default:
 case 128:
  s->mix_a = mix_a_fade_in_out;
  s->mix_b = mix_b_fade_in_out;
  break;
 case 129:
  s->mix_a = mix_a_cross_fade;
  s->mix_b = mix_b_cross_fade;
  break;
 }
}
