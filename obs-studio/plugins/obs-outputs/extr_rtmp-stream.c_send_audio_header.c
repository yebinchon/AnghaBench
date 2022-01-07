
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtmp_stream {int * output; } ;
struct encoder_packet {int timebase_den; int size; int data; int type; } ;
typedef int obs_output_t ;
typedef int obs_encoder_t ;


 int OBS_ENCODER_AUDIO ;
 int bmemdup (int *,int ) ;
 int obs_encoder_get_extra_data (int *,int **,int *) ;
 int * obs_output_get_audio_encoder (int *,size_t) ;
 scalar_t__ send_packet (struct rtmp_stream*,struct encoder_packet*,int,size_t) ;

__attribute__((used)) static bool send_audio_header(struct rtmp_stream *stream, size_t idx,
         bool *next)
{
 obs_output_t *context = stream->output;
 obs_encoder_t *aencoder = obs_output_get_audio_encoder(context, idx);
 uint8_t *header;

 struct encoder_packet packet = {.type = OBS_ENCODER_AUDIO,
     .timebase_den = 1};

 if (!aencoder) {
  *next = 0;
  return 1;
 }

 obs_encoder_get_extra_data(aencoder, &header, &packet.size);
 packet.data = bmemdup(header, packet.size);
 return send_packet(stream, &packet, 1, idx) >= 0;
}
