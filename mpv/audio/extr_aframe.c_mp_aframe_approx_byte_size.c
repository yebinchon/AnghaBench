
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_aframe {TYPE_1__* av_frame; } ;
struct TYPE_2__ {int nb_samples; } ;


 size_t MPMAX (int,int) ;
 int MP_ALIGN_UP (size_t,int) ;
 int mp_aframe_get_planes (struct mp_aframe*) ;
 size_t mp_aframe_get_sstride (struct mp_aframe*) ;

int mp_aframe_approx_byte_size(struct mp_aframe *frame)
{


    int planes = mp_aframe_get_planes(frame);
    size_t sstride = mp_aframe_get_sstride(frame);
    int samples = frame->av_frame->nb_samples;
    int plane_size = MP_ALIGN_UP(sstride * MPMAX(samples, 1), 32);
    return plane_size * planes + sizeof(*frame);
}
