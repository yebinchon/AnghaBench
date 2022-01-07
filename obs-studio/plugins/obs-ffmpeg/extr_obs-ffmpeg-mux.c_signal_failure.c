
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ffmpeg_muxer {int capturing; int output; int pipe; } ;
typedef int error ;



 int OBS_OUTPUT_ERROR ;
 int OBS_OUTPUT_UNSUPPORTED ;
 int deactivate (struct ffmpeg_muxer*,int ) ;
 int obs_output_set_last_error (int ,char*) ;
 int obs_output_signal_stop (int ,int) ;
 int os_atomic_set_bool (int *,int) ;
 size_t os_process_pipe_read_err (int ,int *,int) ;
 int warn (char*,char*) ;

__attribute__((used)) static void signal_failure(struct ffmpeg_muxer *stream)
{
 char error[1024];
 int ret;
 int code;

 size_t len;

 len = os_process_pipe_read_err(stream->pipe, (uint8_t *)error,
           sizeof(error) - 1);

 if (len > 0) {
  error[len] = 0;
  warn("ffmpeg-mux: %s", error);
  obs_output_set_last_error(stream->output, error);
 }

 ret = deactivate(stream, 0);

 switch (ret) {
 case 128:
  code = OBS_OUTPUT_UNSUPPORTED;
  break;
 default:
  code = OBS_OUTPUT_ERROR;
 }

 obs_output_signal_stop(stream->output, code);
 os_atomic_set_bool(&stream->capturing, 0);
}
