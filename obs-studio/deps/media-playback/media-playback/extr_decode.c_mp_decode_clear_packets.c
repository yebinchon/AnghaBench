
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct mp_decode {int packet_pending; TYPE_1__ packets; int orig_pkt; } ;
typedef int pkt ;
typedef int AVPacket ;


 int av_packet_unref (int *) ;
 int circlebuf_pop_front (TYPE_1__*,int *,int) ;

void mp_decode_clear_packets(struct mp_decode *d)
{
 if (d->packet_pending) {
  av_packet_unref(&d->orig_pkt);
  d->packet_pending = 0;
 }

 while (d->packets.size) {
  AVPacket pkt;
  circlebuf_pop_front(&d->packets, &pkt, sizeof(pkt));
  av_packet_unref(&pkt);
 }
}
