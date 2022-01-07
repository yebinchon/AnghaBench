
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_aframe {scalar_t__ pts; TYPE_1__* av_frame; } ;
struct TYPE_2__ {double nb_samples; } ;


 scalar_t__ MP_NOPTS_VALUE ;
 double mp_aframe_get_effective_rate (struct mp_aframe*) ;

double mp_aframe_end_pts(struct mp_aframe *f)
{
    double rate = mp_aframe_get_effective_rate(f);
    if (f->pts == MP_NOPTS_VALUE || rate <= 0)
        return MP_NOPTS_VALUE;
    return f->pts + f->av_frame->nb_samples / rate;
}
