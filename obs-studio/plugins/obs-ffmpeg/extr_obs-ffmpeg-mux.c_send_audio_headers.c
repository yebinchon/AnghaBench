
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {int dummy; } ;
struct encoder_packet {int timebase_den; size_t track_idx; int size; int data; int type; } ;
typedef int obs_encoder_t ;


 int OBS_ENCODER_AUDIO ;
 int obs_encoder_get_extra_data (int *,int *,int *) ;
 int write_packet (struct ffmpeg_muxer*,struct encoder_packet*) ;

__attribute__((used)) static bool send_audio_headers(struct ffmpeg_muxer *stream,
          obs_encoder_t *aencoder, size_t idx)
{
 struct encoder_packet packet = {
  .type = OBS_ENCODER_AUDIO, .timebase_den = 1, .track_idx = idx};

 obs_encoder_get_extra_data(aencoder, &packet.data, &packet.size);
 return write_packet(stream, &packet);
}
