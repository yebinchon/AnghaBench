
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; } ;
struct demux_packet {TYPE_1__ cached_data; scalar_t__ is_cached; } ;
struct demux_internal {int cache; } ;


 int MP_ERR (struct demux_internal*,char*) ;
 int assert (int ) ;
 struct demux_packet* demux_cache_read (int ,int ) ;
 struct demux_packet* demux_copy_packet (struct demux_packet*) ;
 int demux_packet_copy_attribs (struct demux_packet*,struct demux_packet*) ;

__attribute__((used)) static struct demux_packet *read_packet_from_cache(struct demux_internal *in,
                                                   struct demux_packet *pkt)
{
    if (!pkt)
        return ((void*)0);

    if (pkt->is_cached) {
        assert(in->cache);
        struct demux_packet *meta = pkt;
        pkt = demux_cache_read(in->cache, pkt->cached_data.pos);
        if (pkt) {
            demux_packet_copy_attribs(pkt, meta);
        } else {
            MP_ERR(in, "Failed to retrieve packet from cache.\n");
        }
    } else {

        pkt = demux_copy_packet(pkt);
    }

    return pkt;
}
