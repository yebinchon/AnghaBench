
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {struct obs_encoder** audio_encoders; } ;
struct obs_encoder {int dummy; } ;
struct encoder_packet {struct obs_encoder* encoder; } ;


 size_t MAX_AUDIO_MIXES ;
 int assert (int) ;

__attribute__((used)) static size_t get_track_index(const struct obs_output *output,
         struct encoder_packet *pkt)
{
 for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
  struct obs_encoder *encoder = output->audio_encoders[i];

  if (pkt->encoder == encoder)
   return i;
 }

 assert(0);
 return 0;
}
