
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_stream {int last_ret_dts; int last_ret_pos; struct demux_packet* reader_head; } ;
struct demux_packet {int dts; int pos; struct demux_packet* next; } ;



__attribute__((used)) static struct demux_packet *advance_reader_head(struct demux_stream *ds)
{
    struct demux_packet *pkt = ds->reader_head;
    if (!pkt)
        return ((void*)0);

    ds->reader_head = pkt->next;

    ds->last_ret_pos = pkt->pos;
    ds->last_ret_dts = pkt->dts;

    return pkt;
}
