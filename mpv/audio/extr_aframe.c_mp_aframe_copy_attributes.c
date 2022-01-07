
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_aframe {TYPE_1__* av_frame; int speed; int pts; } ;
struct TYPE_3__ {int sample_rate; } ;


 int abort () ;
 scalar_t__ av_frame_copy_props (TYPE_1__*,TYPE_1__*) ;

void mp_aframe_copy_attributes(struct mp_aframe *dst, struct mp_aframe *src)
{
    dst->pts = src->pts;
    dst->speed = src->speed;

    int rate = dst->av_frame->sample_rate;

    if (av_frame_copy_props(dst->av_frame, src->av_frame) < 0)
        abort();

    dst->av_frame->sample_rate = rate;
}
