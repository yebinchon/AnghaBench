
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {int stopping; int sent_headers; int active; int output; } ;


 int obs_output_end_data_capture (int ) ;
 int obs_output_signal_stop (int ,int) ;
 int os_atomic_set_bool (int *,int) ;
 int replay_buffer_clear (struct ffmpeg_muxer*) ;
 scalar_t__ stopping (struct ffmpeg_muxer*) ;

__attribute__((used)) static void deactivate_replay_buffer(struct ffmpeg_muxer *stream, int code)
{
 if (code) {
  obs_output_signal_stop(stream->output, code);
 } else if (stopping(stream)) {
  obs_output_end_data_capture(stream->output);
 }

 os_atomic_set_bool(&stream->active, 0);
 os_atomic_set_bool(&stream->sent_headers, 0);
 os_atomic_set_bool(&stream->stopping, 0);
 replay_buffer_clear(stream);
}
