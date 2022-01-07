
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_aframe {struct AVFrame* av_frame; } ;
struct AVFrame {int dummy; } ;



struct AVFrame *mp_aframe_get_raw_avframe(struct mp_aframe *frame)
{
    return frame->av_frame;
}
