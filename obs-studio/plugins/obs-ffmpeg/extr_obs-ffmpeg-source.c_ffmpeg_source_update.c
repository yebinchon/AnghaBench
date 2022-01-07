
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_source {int is_looping; int close_when_inactive; int range; int buffering_mb; int speed_percent; int is_local_file; int media_valid; void* restart_on_activate; int source; int media; void* seekable; void* is_clear_on_media_end; void* is_hw_decoding; int * input_format; int * input; } ;
typedef int obs_data_t ;
typedef enum video_range_type { ____Placeholder_video_range_type } video_range_type ;


 int bfree (int *) ;
 int * bstrdup (char*) ;
 int dump_source_info (struct ffmpeg_source*,char*,char*) ;
 int ffmpeg_source_open (struct ffmpeg_source*) ;
 int ffmpeg_source_start (struct ffmpeg_source*) ;
 int mp_media_free (int *) ;
 void* obs_data_get_bool (int *,char*) ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 scalar_t__ obs_data_get_string (int *,char*) ;
 int obs_source_active (int ) ;

__attribute__((used)) static void ffmpeg_source_update(void *data, obs_data_t *settings)
{
 struct ffmpeg_source *s = data;

 bool is_local_file = obs_data_get_bool(settings, "is_local_file");

 char *input;
 char *input_format;

 bfree(s->input);
 bfree(s->input_format);

 if (is_local_file) {
  input = (char *)obs_data_get_string(settings, "local_file");
  input_format = ((void*)0);
  s->is_looping = obs_data_get_bool(settings, "looping");
  s->close_when_inactive =
   obs_data_get_bool(settings, "close_when_inactive");
 } else {
  input = (char *)obs_data_get_string(settings, "input");
  input_format =
   (char *)obs_data_get_string(settings, "input_format");
  s->is_looping = 0;
  s->close_when_inactive = 1;
 }

 s->input = input ? bstrdup(input) : ((void*)0);
 s->input_format = input_format ? bstrdup(input_format) : ((void*)0);

 s->is_hw_decoding = obs_data_get_bool(settings, "hw_decode");

 s->is_clear_on_media_end =
  obs_data_get_bool(settings, "clear_on_media_end");
 s->restart_on_activate =
  obs_data_get_bool(settings, "restart_on_activate");
 s->range = (enum video_range_type)obs_data_get_int(settings,
          "color_range");
 s->buffering_mb = (int)obs_data_get_int(settings, "buffering_mb");
 s->speed_percent = (int)obs_data_get_int(settings, "speed_percent");
 s->is_local_file = is_local_file;
 s->seekable = obs_data_get_bool(settings, "seekable");

 if (s->speed_percent < 1 || s->speed_percent > 200)
  s->speed_percent = 100;

 if (s->media_valid) {
  mp_media_free(&s->media);
  s->media_valid = 0;
 }

 bool active = obs_source_active(s->source);
 if (!s->close_when_inactive || active)
  ffmpeg_source_open(s);

 dump_source_info(s, input, input_format);
 if (!s->restart_on_activate || active)
  ffmpeg_source_start(s);
}
