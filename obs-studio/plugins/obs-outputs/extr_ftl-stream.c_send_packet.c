
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int total; TYPE_2__* nalus; } ;
struct ftl_stream {int total_bytes_sent; int ftl_handle; int frames_sent; TYPE_1__ coded_pic_buffer; } ;
struct encoder_packet {scalar_t__ type; int data; scalar_t__ size; int dts_usec; } ;
struct TYPE_4__ {int len; scalar_t__ send_marker_bit; int data; } ;
typedef TYPE_2__ nalu_t ;


 int FTL_AUDIO_DATA ;
 int FTL_VIDEO_DATA ;
 scalar_t__ OBS_ENCODER_AUDIO ;
 scalar_t__ OBS_ENCODER_VIDEO ;
 int avc_get_video_frame (struct ftl_stream*,struct encoder_packet*,int) ;
 int bfree (int ) ;
 scalar_t__ ftl_ingest_send_media_dts (int *,int ,int ,int ,int,scalar_t__) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;
 int warn (char*,scalar_t__) ;

__attribute__((used)) static int send_packet(struct ftl_stream *stream, struct encoder_packet *packet,
         bool is_header)
{
 int bytes_sent = 0;
 int ret = 0;

 if (packet->type == OBS_ENCODER_VIDEO) {
  stream->coded_pic_buffer.total = 0;
  avc_get_video_frame(stream, packet, is_header);

  int i;
  for (i = 0; i < stream->coded_pic_buffer.total; i++) {
   nalu_t *nalu = &stream->coded_pic_buffer.nalus[i];
   bytes_sent += ftl_ingest_send_media_dts(
    &stream->ftl_handle, FTL_VIDEO_DATA,
    packet->dts_usec, nalu->data, nalu->len,
    nalu->send_marker_bit);

   if (nalu->send_marker_bit) {
    stream->frames_sent++;
   }
  }

 } else if (packet->type == OBS_ENCODER_AUDIO) {
  bytes_sent += ftl_ingest_send_media_dts(
   &stream->ftl_handle, FTL_AUDIO_DATA, packet->dts_usec,
   packet->data, (int)packet->size, 0);
 } else {
  warn("Got packet type %d", packet->type);
 }

 if (is_header) {
  bfree(packet->data);
 } else {
  obs_encoder_packet_release(packet);
 }

 stream->total_bytes_sent += bytes_sent;
 return ret;
}
