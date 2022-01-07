
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct encoder_packet* array; } ;
struct obs_output {TYPE_1__ interleaved_packets; } ;
struct encoder_packet {int type; size_t track_idx; } ;
typedef enum obs_encoder_type { ____Placeholder_obs_encoder_type } obs_encoder_type ;


 int OBS_ENCODER_AUDIO ;

__attribute__((used)) static int find_first_packet_type_idx(struct obs_output *output,
          enum obs_encoder_type type,
          size_t audio_idx)
{
 for (size_t i = 0; i < output->interleaved_packets.num; i++) {
  struct encoder_packet *packet =
   &output->interleaved_packets.array[i];

  if (packet->type == type) {
   if (type == OBS_ENCODER_AUDIO &&
       packet->track_idx != audio_idx) {
    continue;
   }

   return (int)i;
  }
 }

 return -1;
}
