
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_packet {int len; int buffer; scalar_t__ avpacket; } ;


 int demux_packet_copy_attribs (struct demux_packet*,struct demux_packet*) ;
 struct demux_packet* new_demux_packet_from (int ,int ) ;
 struct demux_packet* new_demux_packet_from_avpacket (scalar_t__) ;

struct demux_packet *demux_copy_packet(struct demux_packet *dp)
{
    struct demux_packet *new = ((void*)0);
    if (dp->avpacket) {
        new = new_demux_packet_from_avpacket(dp->avpacket);
    } else {

        new = new_demux_packet_from(dp->buffer, dp->len);
    }
    if (!new)
        return ((void*)0);
    demux_packet_copy_attribs(new, dp);
    return new;
}
