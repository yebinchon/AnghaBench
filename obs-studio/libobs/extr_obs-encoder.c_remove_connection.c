
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct obs_encoder {int media; int mixer_idx; TYPE_1__ info; } ;


 scalar_t__ OBS_ENCODER_AUDIO ;
 int audio_output_disconnect (int ,int ,int ,struct obs_encoder*) ;
 scalar_t__ gpu_encode_available (struct obs_encoder*) ;
 int obs_encoder_shutdown (struct obs_encoder*) ;
 int receive_audio ;
 int receive_video ;
 int set_encoder_active (struct obs_encoder*,int) ;
 int stop_gpu_encode (struct obs_encoder*) ;
 int stop_raw_video (int ,int ,struct obs_encoder*) ;

__attribute__((used)) static void remove_connection(struct obs_encoder *encoder, bool shutdown)
{
 if (encoder->info.type == OBS_ENCODER_AUDIO) {
  audio_output_disconnect(encoder->media, encoder->mixer_idx,
     receive_audio, encoder);
 } else {
  if (gpu_encode_available(encoder)) {
   stop_gpu_encode(encoder);
  } else {
   stop_raw_video(encoder->media, receive_video, encoder);
  }
 }






 if (shutdown)
  obs_encoder_shutdown(encoder);
 set_encoder_active(encoder, 0);
}
