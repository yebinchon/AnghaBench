
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_scale_info {int member_0; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct obs_encoder {int media; int mixer_idx; TYPE_1__ info; } ;
struct audio_convert_info {int member_0; } ;


 scalar_t__ OBS_ENCODER_AUDIO ;
 int audio_output_connect (int ,int ,struct audio_convert_info*,int ,struct obs_encoder*) ;
 int get_audio_info (struct obs_encoder*,struct audio_convert_info*) ;
 int get_video_info (struct obs_encoder*,struct video_scale_info*) ;
 scalar_t__ gpu_encode_available (struct obs_encoder*) ;
 int receive_audio ;
 int receive_video ;
 int set_encoder_active (struct obs_encoder*,int) ;
 int start_gpu_encode (struct obs_encoder*) ;
 int start_raw_video (int ,struct video_scale_info*,int ,struct obs_encoder*) ;

__attribute__((used)) static void add_connection(struct obs_encoder *encoder)
{
 if (encoder->info.type == OBS_ENCODER_AUDIO) {
  struct audio_convert_info audio_info = {0};
  get_audio_info(encoder, &audio_info);

  audio_output_connect(encoder->media, encoder->mixer_idx,
         &audio_info, receive_audio, encoder);
 } else {
  struct video_scale_info info = {0};
  get_video_info(encoder, &info);

  if (gpu_encode_available(encoder)) {
   start_gpu_encode(encoder);
  } else {
   start_raw_video(encoder->media, &info, receive_video,
     encoder);
  }
 }

 set_encoder_active(encoder, 1);
}
