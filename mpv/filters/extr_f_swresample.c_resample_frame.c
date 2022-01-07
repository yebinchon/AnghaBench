
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_aframe {int dummy; } ;
struct AVAudioResampleContext {int dummy; } ;
struct TYPE_3__ {int nb_samples; int * linesize; int * extended_data; } ;
typedef TYPE_1__ AVFrame ;


 int MPMIN (int ,int) ;
 int avresample_convert (struct AVAudioResampleContext*,int *,int ,int ,int *,int ,int ) ;
 TYPE_1__* mp_aframe_get_raw_avframe (struct mp_aframe*) ;

__attribute__((used)) static int resample_frame(struct AVAudioResampleContext *r,
                          struct mp_aframe *out, struct mp_aframe *in,
                          int consume_in)
{



    AVFrame *av_i = in ? mp_aframe_get_raw_avframe(in) : ((void*)0);
    AVFrame *av_o = out ? mp_aframe_get_raw_avframe(out) : ((void*)0);
    return avresample_convert(r,
        av_o ? av_o->extended_data : ((void*)0),
        av_o ? av_o->linesize[0] : 0,
        av_o ? av_o->nb_samples : 0,
        av_i ? av_i->extended_data : ((void*)0),
        av_i ? av_i->linesize[0] : 0,
        av_i ? MPMIN(av_i->nb_samples, consume_in) : 0);
}
