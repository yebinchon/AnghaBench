
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decode {int packets; } ;
typedef int AVPacket ;


 int circlebuf_push_back (int *,int *,int) ;

void mp_decode_push_packet(struct mp_decode *decode, AVPacket *packet)
{
 circlebuf_push_back(&decode->packets, packet, sizeof(*packet));
}
