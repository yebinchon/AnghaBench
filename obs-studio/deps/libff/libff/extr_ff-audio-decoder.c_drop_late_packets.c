
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int pts; } ;
struct ff_packet {TYPE_1__ base; } ;
struct ff_decoder {int clock; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ ff_clock_start_time (int ) ;
 scalar_t__ ff_decoder_set_frame_drop_state (struct ff_decoder*,scalar_t__,int ) ;
 int shrink_packet (struct ff_packet*,int ) ;

__attribute__((used)) static void drop_late_packets(struct ff_decoder *decoder,
                              struct ff_packet *packet)
{
 int64_t start_time = ff_clock_start_time(decoder->clock);
 if (start_time != AV_NOPTS_VALUE) {
  if (ff_decoder_set_frame_drop_state(decoder, start_time,
                                      packet->base.pts))
   shrink_packet(packet, packet->base.size);
 }
}
