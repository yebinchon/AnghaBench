
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {scalar_t__ extra_frame; int extra_tun; } ;



void
frame_subtract_extra(struct frame *frame, const struct frame *src)
{
    frame->extra_frame -= src->extra_frame;
    frame->extra_tun += src->extra_frame;
}
