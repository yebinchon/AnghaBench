
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct encoder_packet* array; } ;
struct obs_output {TYPE_1__ interleaved_packets; } ;
struct encoder_packet {int dummy; } ;


 int da_erase_range (TYPE_1__,int ,size_t) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;

__attribute__((used)) static void discard_to_idx(struct obs_output *output, size_t idx)
{
 for (size_t i = 0; i < idx; i++) {
  struct encoder_packet *packet =
   &output->interleaved_packets.array[i];
  obs_encoder_packet_release(packet);
 }

 da_erase_range(output->interleaved_packets, 0, idx);
}
