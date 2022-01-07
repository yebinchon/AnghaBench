
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_aframe {TYPE_1__* av_frame; int format; int chmap; } ;
struct TYPE_2__ {int channels; int channel_layout; int format; int sample_rate; } ;


 int mp_aframe_copy_attributes (struct mp_aframe*,struct mp_aframe*) ;
 int mp_aframe_reset (struct mp_aframe*) ;

void mp_aframe_config_copy(struct mp_aframe *dst, struct mp_aframe *src)
{
    mp_aframe_reset(dst);

    dst->chmap = src->chmap;
    dst->format = src->format;

    mp_aframe_copy_attributes(dst, src);

    dst->av_frame->sample_rate = src->av_frame->sample_rate;
    dst->av_frame->format = src->av_frame->format;
    dst->av_frame->channel_layout = src->av_frame->channel_layout;




}
