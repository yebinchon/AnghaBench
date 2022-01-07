
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int received_video; int received_audio; } ;
struct encoder_packet {int dummy; } ;


 int OBS_ENCODER_AUDIO ;
 int OBS_ENCODER_VIDEO ;
 struct encoder_packet* find_first_packet_type (struct obs_output*,int ,size_t) ;

__attribute__((used)) static bool get_audio_and_video_packets(struct obs_output *output,
     struct encoder_packet **video,
     struct encoder_packet **audio,
     size_t audio_mixes)
{
 *video = find_first_packet_type(output, OBS_ENCODER_VIDEO, 0);
 if (!*video)
  output->received_video = 0;

 for (size_t i = 0; i < audio_mixes; i++) {
  audio[i] = find_first_packet_type(output, OBS_ENCODER_AUDIO, i);
  if (!audio[i]) {
   output->received_audio = 0;
   return 0;
  }
 }

 if (!*video) {
  return 0;
 }

 return 1;
}
