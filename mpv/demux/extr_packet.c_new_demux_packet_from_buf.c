
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct demux_packet {int dummy; } ;
struct AVBufferRef {int data; int size; } ;
struct TYPE_3__ {struct AVBufferRef* buf; int data; int size; } ;
typedef TYPE_1__ AVPacket ;


 struct demux_packet* new_demux_packet_from_avpacket (TYPE_1__*) ;

struct demux_packet *new_demux_packet_from_buf(struct AVBufferRef *buf)
{
    if (!buf)
        return ((void*)0);
    AVPacket pkt = {
        .size = buf->size,
        .data = buf->data,
        .buf = buf,
    };
    return new_demux_packet_from_avpacket(&pkt);
}
