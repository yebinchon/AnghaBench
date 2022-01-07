
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtmp_stream {int * output; } ;
struct encoder_packet {int timebase_den; int keyframe; int data; int size; int type; } ;
typedef int obs_output_t ;
typedef int obs_encoder_t ;


 int OBS_ENCODER_VIDEO ;
 int obs_encoder_get_extra_data (int *,int **,size_t*) ;
 int * obs_output_get_video_encoder (int *) ;
 int obs_parse_avc_header (int *,int *,size_t) ;
 scalar_t__ send_packet (struct rtmp_stream*,struct encoder_packet*,int,int ) ;

__attribute__((used)) static bool send_video_header(struct rtmp_stream *stream)
{
 obs_output_t *context = stream->output;
 obs_encoder_t *vencoder = obs_output_get_video_encoder(context);
 uint8_t *header;
 size_t size;

 struct encoder_packet packet = {
  .type = OBS_ENCODER_VIDEO, .timebase_den = 1, .keyframe = 1};

 obs_encoder_get_extra_data(vencoder, &header, &size);
 packet.size = obs_parse_avc_header(&packet.data, header, size);
 return send_packet(stream, &packet, 1, 0) >= 0;
}
