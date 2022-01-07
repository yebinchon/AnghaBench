
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_aframe {double pts; } ;



void mp_aframe_set_pts(struct mp_aframe *frame, double pts)
{
    frame->pts = pts;
}
