
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {int output; } ;
struct encoder_packet {int timebase_den; int size; int data; int type; } ;
typedef int obs_encoder_t ;


 int OBS_ENCODER_VIDEO ;
 int obs_encoder_get_extra_data (int *,int *,int *) ;
 int * obs_output_get_video_encoder (int ) ;
 int write_packet (struct ffmpeg_muxer*,struct encoder_packet*) ;

__attribute__((used)) static bool send_video_headers(struct ffmpeg_muxer *stream)
{
 obs_encoder_t *vencoder = obs_output_get_video_encoder(stream->output);

 struct encoder_packet packet = {.type = OBS_ENCODER_VIDEO,
     .timebase_den = 1};

 obs_encoder_get_extra_data(vencoder, &packet.data, &packet.size);
 return write_packet(stream, &packet);
}
