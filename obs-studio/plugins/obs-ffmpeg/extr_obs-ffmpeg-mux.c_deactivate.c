
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array; } ;
struct ffmpeg_muxer {int stopping; int output; TYPE_1__ path; int sent_headers; int active; int * pipe; } ;


 scalar_t__ active (struct ffmpeg_muxer*) ;
 int info (char*,int ) ;
 int obs_output_end_data_capture (int ) ;
 int obs_output_signal_stop (int ,int) ;
 int os_atomic_set_bool (int *,int) ;
 int os_process_pipe_destroy (int *) ;
 scalar_t__ stopping (struct ffmpeg_muxer*) ;

__attribute__((used)) static int deactivate(struct ffmpeg_muxer *stream, int code)
{
 int ret = -1;

 if (active(stream)) {
  ret = os_process_pipe_destroy(stream->pipe);
  stream->pipe = ((void*)0);

  os_atomic_set_bool(&stream->active, 0);
  os_atomic_set_bool(&stream->sent_headers, 0);

  info("Output of file '%s' stopped", stream->path.array);
 }

 if (code) {
  obs_output_signal_stop(stream->output, code);
 } else if (stopping(stream)) {
  obs_output_end_data_capture(stream->output);
 }

 os_atomic_set_bool(&stream->stopping, 0);
 return ret;
}
