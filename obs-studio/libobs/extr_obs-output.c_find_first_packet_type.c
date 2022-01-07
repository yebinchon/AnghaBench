
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct encoder_packet* array; } ;
struct obs_output {TYPE_1__ interleaved_packets; } ;
struct encoder_packet {int dummy; } ;
typedef enum obs_encoder_type { ____Placeholder_obs_encoder_type } obs_encoder_type ;


 int find_first_packet_type_idx (struct obs_output*,int,size_t) ;

__attribute__((used)) static inline struct encoder_packet *
find_first_packet_type(struct obs_output *output, enum obs_encoder_type type,
         size_t audio_idx)
{
 int idx = find_first_packet_type_idx(output, type, audio_idx);
 return (idx != -1) ? &output->interleaved_packets.array[idx] : ((void*)0);
}
