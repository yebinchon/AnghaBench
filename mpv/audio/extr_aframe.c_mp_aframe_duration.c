
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_aframe {TYPE_1__* av_frame; } ;
struct TYPE_2__ {double nb_samples; } ;


 double mp_aframe_get_effective_rate (struct mp_aframe*) ;

double mp_aframe_duration(struct mp_aframe *f)
{
    double rate = mp_aframe_get_effective_rate(f);
    if (rate <= 0)
        return 0;
    return f->av_frame->nb_samples / rate;
}
