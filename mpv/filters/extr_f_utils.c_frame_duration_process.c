
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {scalar_t__ pts; scalar_t__ pkt_duration; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_filter {int * ppins; struct frame_duration_priv* priv; } ;
struct frame_duration_priv {struct mp_image* buffered; } ;


 struct mp_frame MAKE_FRAME (scalar_t__,struct mp_image*) ;
 scalar_t__ MP_FRAME_EOF ;
 scalar_t__ MP_FRAME_VIDEO ;
 scalar_t__ MP_NOPTS_VALUE ;
 int mp_pin_can_transfer_data (int ,int ) ;
 int mp_pin_in_write (int ,struct mp_frame) ;
 struct mp_frame mp_pin_out_read (int ) ;
 int mp_pin_out_repeat_eof (int ) ;
 int mp_pin_out_request_data (int ) ;

__attribute__((used)) static void frame_duration_process(struct mp_filter *f)
{
    struct frame_duration_priv *p = f->priv;

    if (!mp_pin_can_transfer_data(f->ppins[1], f->ppins[0]))
        return;

    struct mp_frame frame = mp_pin_out_read(f->ppins[0]);

    if (frame.type == MP_FRAME_EOF && p->buffered) {
        mp_pin_in_write(f->ppins[1], MAKE_FRAME(MP_FRAME_VIDEO, p->buffered));
        p->buffered = ((void*)0);

        mp_pin_out_repeat_eof(f->ppins[0]);
    } else if (frame.type == MP_FRAME_VIDEO) {
        struct mp_image *next = frame.data;
        if (p->buffered) {
            if (p->buffered->pts != MP_NOPTS_VALUE &&
                next->pts != MP_NOPTS_VALUE &&
                next->pts >= p->buffered->pts)
            {
                p->buffered->pkt_duration = next->pts - p->buffered->pts;
            }
            mp_pin_in_write(f->ppins[1], MAKE_FRAME(MP_FRAME_VIDEO, p->buffered));
        } else {
            mp_pin_out_request_data(f->ppins[0]);
        }
        p->buffered = next;
    } else {
        mp_pin_in_write(f->ppins[1], frame);
    }
}
