
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {int filter; int out; } ;
struct mp_image {int dummy; } ;


 int MAKE_FRAME (int ,struct mp_image*) ;
 int MP_FRAME_VIDEO ;
 int MP_WARN (int ,char*) ;
 int mp_filter_internal_mark_failed (int ) ;
 int mp_pin_in_write (int ,int ) ;
 int mp_refqueue_next_field (struct mp_refqueue*) ;

void mp_refqueue_write_out_pin(struct mp_refqueue *q, struct mp_image *mpi)
{
    if (mpi) {
        mp_pin_in_write(q->out, MAKE_FRAME(MP_FRAME_VIDEO, mpi));
    } else {
        MP_WARN(q->filter, "failed to output frame\n");
        mp_filter_internal_mark_failed(q->filter);
    }
    mp_refqueue_next_field(q);
}
