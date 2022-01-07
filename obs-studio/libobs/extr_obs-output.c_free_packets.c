
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct obs_output {TYPE_1__ interleaved_packets; } ;


 int da_free (TYPE_1__) ;
 int obs_encoder_packet_release (scalar_t__) ;

__attribute__((used)) static inline void free_packets(struct obs_output *output)
{
 for (size_t i = 0; i < output->interleaved_packets.num; i++)
  obs_encoder_packet_release(output->interleaved_packets.array +
        i);
 da_free(output->interleaved_packets);
}
