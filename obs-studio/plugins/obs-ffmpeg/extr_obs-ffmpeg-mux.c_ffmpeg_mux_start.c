
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct win_version_info {int major; } ;
struct TYPE_2__ {int array; } ;
struct ffmpeg_muxer {TYPE_1__ path; int output; scalar_t__ total_bytes; int capturing; int active; int pipe; } ;
struct dstr {char* array; } ;
typedef int obs_data_t ;
typedef int FILE ;


 int dstr_cat (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init_copy (struct dstr*,char*) ;
 int dstr_replace (struct dstr*,char*,char const*) ;
 int fclose (int *) ;
 int get_win_ver (struct win_version_info*) ;
 int info (char*,int ) ;
 char* obs_data_get_string (int *,char*) ;
 int obs_data_release (int *) ;
 char* obs_module_text (char*) ;
 int obs_output_begin_data_capture (int ,int ) ;
 int obs_output_can_begin_data_capture (int ,int ) ;
 int * obs_output_get_settings (int ) ;
 int obs_output_initialize_encoders (int ,int ) ;
 int obs_output_set_last_error (int ,char*) ;
 int os_atomic_set_bool (int *,int) ;
 int * os_fopen (char const*,char*) ;
 int os_unlink (char const*) ;
 int start_pipe (struct ffmpeg_muxer*,char const*) ;
 int warn (char*) ;

__attribute__((used)) static bool ffmpeg_mux_start(void *data)
{
 struct ffmpeg_muxer *stream = data;
 obs_data_t *settings;
 const char *path;

 if (!obs_output_can_begin_data_capture(stream->output, 0))
  return 0;
 if (!obs_output_initialize_encoders(stream->output, 0))
  return 0;

 settings = obs_output_get_settings(stream->output);
 path = obs_data_get_string(settings, "path");



 FILE *test_file = os_fopen(path, "wb");
 if (!test_file) {
  struct dstr error_message;
  dstr_init_copy(&error_message,
          obs_module_text("UnableToWritePath"));
  dstr_replace(&error_message, "%1", path);
  obs_output_set_last_error(stream->output, error_message.array);
  dstr_free(&error_message);
  obs_data_release(settings);
  return 0;
 }

 fclose(test_file);
 os_unlink(path);

 start_pipe(stream, path);
 obs_data_release(settings);

 if (!stream->pipe) {
  obs_output_set_last_error(
   stream->output, obs_module_text("HelperProcessFailed"));
  warn("Failed to create process pipe");
  return 0;
 }


 os_atomic_set_bool(&stream->active, 1);
 os_atomic_set_bool(&stream->capturing, 1);
 stream->total_bytes = 0;
 obs_output_begin_data_capture(stream->output, 0);

 info("Writing file '%s'...", stream->path.array);
 return 1;
}
