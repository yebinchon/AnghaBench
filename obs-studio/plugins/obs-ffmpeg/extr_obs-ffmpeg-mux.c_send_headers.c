
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {int output; } ;
typedef int obs_encoder_t ;


 int * obs_output_get_audio_encoder (int ,size_t) ;
 int send_audio_headers (struct ffmpeg_muxer*,int *,size_t) ;
 int send_video_headers (struct ffmpeg_muxer*) ;

__attribute__((used)) static bool send_headers(struct ffmpeg_muxer *stream)
{
 obs_encoder_t *aencoder;
 size_t idx = 0;

 if (!send_video_headers(stream))
  return 0;

 do {
  aencoder = obs_output_get_audio_encoder(stream->output, idx);
  if (aencoder) {
   if (!send_audio_headers(stream, aencoder, idx)) {
    return 0;
   }
   idx++;
  }
 } while (aencoder);

 return 1;
}
