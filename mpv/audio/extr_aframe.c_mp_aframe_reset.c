
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; } ;
struct mp_aframe {double speed; int pts; scalar_t__ format; TYPE_1__ chmap; int av_frame; } ;


 int MP_NOPTS_VALUE ;
 int av_frame_unref (int ) ;

void mp_aframe_reset(struct mp_aframe *frame)
{
    av_frame_unref(frame->av_frame);
    frame->chmap.num = 0;
    frame->format = 0;
    frame->pts = MP_NOPTS_VALUE;
    frame->speed = 1.0;
}
