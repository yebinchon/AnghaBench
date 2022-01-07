
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array; } ;
struct flv_output {int got_first_video; int sent_headers; TYPE_1__ path; int output; int active; int file; int stopping; } ;
typedef int obs_data_t ;


 int dstr_copy (TYPE_1__*,char const*) ;
 int info (char*,int ) ;
 char* obs_data_get_string (int *,char*) ;
 int obs_data_release (int *) ;
 int obs_output_begin_data_capture (int ,int ) ;
 int obs_output_can_begin_data_capture (int ,int ) ;
 int * obs_output_get_settings (int ) ;
 int obs_output_initialize_encoders (int ,int ) ;
 int os_atomic_set_bool (int *,int) ;
 int os_fopen (int ,char*) ;
 int warn (char*,int ) ;

__attribute__((used)) static bool flv_output_start(void *data)
{
 struct flv_output *stream = data;
 obs_data_t *settings;
 const char *path;

 if (!obs_output_can_begin_data_capture(stream->output, 0))
  return 0;
 if (!obs_output_initialize_encoders(stream->output, 0))
  return 0;

 stream->got_first_video = 0;
 stream->sent_headers = 0;
 os_atomic_set_bool(&stream->stopping, 0);


 settings = obs_output_get_settings(stream->output);
 path = obs_data_get_string(settings, "path");
 dstr_copy(&stream->path, path);
 obs_data_release(settings);

 stream->file = os_fopen(stream->path.array, "wb");
 if (!stream->file) {
  warn("Unable to open FLV file '%s'", stream->path.array);
  return 0;
 }


 os_atomic_set_bool(&stream->active, 1);
 obs_output_begin_data_capture(stream->output, 0);

 info("Writing FLV file '%s'...", stream->path.array);
 return 1;
}
