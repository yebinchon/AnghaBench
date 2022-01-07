
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int eof_returned; int src; } ;
struct mp_frame {int type; struct demux_packet* member_1; int member_0; } ;
struct mp_filter {int * ppins; struct priv* priv; } ;
struct demux_packet {int dummy; } ;


 int MP_FRAME_EOF ;
 int MP_FRAME_PACKET ;
 scalar_t__ demux_read_packet_async (int ,struct demux_packet**) ;
 int mp_pin_in_needs_data (int ) ;
 int mp_pin_in_write (int ,struct mp_frame) ;

__attribute__((used)) static void process(struct mp_filter *f)
{
    struct priv *p = f->priv;

    if (!mp_pin_in_needs_data(f->ppins[0]))
        return;

    struct demux_packet *pkt = ((void*)0);
    if (demux_read_packet_async(p->src, &pkt) == 0)
        return;

    struct mp_frame frame = {MP_FRAME_PACKET, pkt};
    if (pkt) {
        p->eof_returned = 0;
    } else {
        frame.type = MP_FRAME_EOF;


        if (p->eof_returned)
            return;
        p->eof_returned = 1;
    }

    mp_pin_in_write(f->ppins[0], frame);
}
