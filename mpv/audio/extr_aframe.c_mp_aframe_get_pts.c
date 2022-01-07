
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_aframe {double pts; } ;



double mp_aframe_get_pts(struct mp_aframe *frame)
{
    return frame->pts;
}
