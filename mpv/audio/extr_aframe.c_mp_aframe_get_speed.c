
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_aframe {double speed; } ;



double mp_aframe_get_speed(struct mp_aframe *frame)
{
    return frame->speed;
}
