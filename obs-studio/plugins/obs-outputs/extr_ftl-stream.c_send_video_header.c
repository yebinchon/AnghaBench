
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ftl_stream {int * output; } ;
struct encoder_packet {int timebase_den; int keyframe; int data; int size; int dts_usec; int type; } ;
typedef int obs_output_t ;
typedef int obs_encoder_t ;
typedef int int64_t ;


 int OBS_ENCODER_VIDEO ;
 int obs_encoder_get_extra_data (int *,int **,size_t*) ;
 int * obs_output_get_video_encoder (int *) ;
 int obs_parse_avc_header (int *,int *,size_t) ;
 scalar_t__ send_packet (struct ftl_stream*,struct encoder_packet*,int) ;

__attribute__((used)) static bool send_video_header(struct ftl_stream *stream, int64_t dts_usec)
{
 obs_output_t *context = stream->output;
 obs_encoder_t *vencoder = obs_output_get_video_encoder(context);
 uint8_t *header;
 size_t size;

 struct encoder_packet packet = {.type = OBS_ENCODER_VIDEO,
     .timebase_den = 1,
     .keyframe = 1,
     .dts_usec = dts_usec};

 obs_encoder_get_extra_data(vencoder, &header, &size);
 packet.size = obs_parse_avc_header(&packet.data, header, size);
 return send_packet(stream, &packet, 1) >= 0;
}
