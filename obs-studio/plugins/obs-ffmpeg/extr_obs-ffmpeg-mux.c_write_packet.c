
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ffmpeg_muxer {size_t total_bytes; int pipe; } ;
struct ffm_packet_info {int index; int keyframe; int type; int size; int dts; int pts; } ;
struct encoder_packet {scalar_t__ type; int size; int const* data; int keyframe; scalar_t__ track_idx; int dts; int pts; } ;
typedef int info ;


 int FFM_PACKET_AUDIO ;
 int FFM_PACKET_VIDEO ;
 scalar_t__ OBS_ENCODER_VIDEO ;
 size_t os_process_pipe_write (int ,int const*,int) ;
 int signal_failure (struct ffmpeg_muxer*) ;
 int warn (char*) ;

__attribute__((used)) static bool write_packet(struct ffmpeg_muxer *stream,
    struct encoder_packet *packet)
{
 bool is_video = packet->type == OBS_ENCODER_VIDEO;
 size_t ret;

 struct ffm_packet_info info = {.pts = packet->pts,
           .dts = packet->dts,
           .size = (uint32_t)packet->size,
           .index = (int)packet->track_idx,
           .type = is_video ? FFM_PACKET_VIDEO
       : FFM_PACKET_AUDIO,
           .keyframe = packet->keyframe};

 ret = os_process_pipe_write(stream->pipe, (const uint8_t *)&info,
        sizeof(info));
 if (ret != sizeof(info)) {
  warn("os_process_pipe_write for info structure failed");
  signal_failure(stream);
  return 0;
 }

 ret = os_process_pipe_write(stream->pipe, packet->data, packet->size);
 if (ret != packet->size) {
  warn("os_process_pipe_write for packet data failed");
  signal_failure(stream);
  return 0;
 }

 stream->total_bytes += packet->size;
 return 1;
}
