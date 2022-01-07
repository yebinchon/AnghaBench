
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {int sent_headers; scalar_t__ stop_ts; } ;
struct encoder_packet {scalar_t__ sys_dts_usec; } ;


 int OBS_OUTPUT_ENCODE_ERROR ;
 int active (struct ffmpeg_muxer*) ;
 int deactivate (struct ffmpeg_muxer*,int ) ;
 int send_headers (struct ffmpeg_muxer*) ;
 scalar_t__ stopping (struct ffmpeg_muxer*) ;
 int write_packet (struct ffmpeg_muxer*,struct encoder_packet*) ;

__attribute__((used)) static void ffmpeg_mux_data(void *data, struct encoder_packet *packet)
{
 struct ffmpeg_muxer *stream = data;

 if (!active(stream))
  return;


 if (!packet) {
  deactivate(stream, OBS_OUTPUT_ENCODE_ERROR);
  return;
 }

 if (!stream->sent_headers) {
  if (!send_headers(stream))
   return;

  stream->sent_headers = 1;
 }

 if (stopping(stream)) {
  if (packet->sys_dts_usec >= stream->stop_ts) {
   deactivate(stream, 0);
   return;
  }
 }

 write_packet(stream, packet);
}
