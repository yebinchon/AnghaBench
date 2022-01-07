
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct demux_packet {int dummy; } ;
struct TYPE_3__ {size_t size; int * data; } ;
typedef TYPE_1__ AVPacket ;


 size_t INT_MAX ;
 struct demux_packet* new_demux_packet_from_avpacket (TYPE_1__*) ;

struct demux_packet *new_demux_packet(size_t len)
{
    if (len > INT_MAX)
        return ((void*)0);
    AVPacket pkt = { .data = ((void*)0), .size = len };
    return new_demux_packet_from_avpacket(&pkt);
}
