
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_aframe {TYPE_1__* av_frame; } ;
struct TYPE_2__ {int sample_rate; } ;



int mp_aframe_get_rate(struct mp_aframe *frame)
{
    return frame->av_frame->sample_rate;
}
