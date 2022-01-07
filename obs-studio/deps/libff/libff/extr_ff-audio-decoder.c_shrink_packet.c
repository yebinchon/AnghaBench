
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int * data; } ;
struct ff_packet {TYPE_1__ base; } ;


 int av_shrink_packet (TYPE_1__*,int) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static inline void shrink_packet(struct ff_packet *packet, int packet_length)
{
 if (packet_length <= packet->base.size) {
  int remaining = packet->base.size - packet_length;

  memmove(packet->base.data, &packet->base.data[packet_length],
          remaining);
  av_shrink_packet(&packet->base, remaining);
 }
}
