
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_aframe {TYPE_1__* av_frame; } ;
struct TYPE_2__ {int nb_samples; } ;


 scalar_t__ af_fmt_is_planar (int ) ;
 int mp_aframe_get_channels (struct mp_aframe*) ;
 int mp_aframe_get_format (struct mp_aframe*) ;

int mp_aframe_get_total_plane_samples(struct mp_aframe *frame)
{
    return frame->av_frame->nb_samples *
           (af_fmt_is_planar(mp_aframe_get_format(frame))
            ? 1 : mp_aframe_get_channels(frame));
}
