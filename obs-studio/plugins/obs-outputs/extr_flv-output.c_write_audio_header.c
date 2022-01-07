
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flv_output {int * output; } ;
struct encoder_packet {int timebase_den; int size; int data; int type; } ;
typedef int obs_output_t ;
typedef int obs_encoder_t ;


 int OBS_ENCODER_AUDIO ;
 int obs_encoder_get_extra_data (int *,int *,int *) ;
 int * obs_output_get_audio_encoder (int *,int ) ;
 int write_packet (struct flv_output*,struct encoder_packet*,int) ;

__attribute__((used)) static void write_audio_header(struct flv_output *stream)
{
 obs_output_t *context = stream->output;
 obs_encoder_t *aencoder = obs_output_get_audio_encoder(context, 0);

 struct encoder_packet packet = {.type = OBS_ENCODER_AUDIO,
     .timebase_den = 1};

 obs_encoder_get_extra_data(aencoder, &packet.data, &packet.size);
 write_packet(stream, &packet, 1);
}
