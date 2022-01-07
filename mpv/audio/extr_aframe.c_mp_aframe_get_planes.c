
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_aframe {int dummy; } ;


 scalar_t__ af_fmt_is_planar (int ) ;
 int mp_aframe_get_channels (struct mp_aframe*) ;
 int mp_aframe_get_format (struct mp_aframe*) ;

int mp_aframe_get_planes(struct mp_aframe *frame)
{
    return af_fmt_is_planar(mp_aframe_get_format(frame))
           ? mp_aframe_get_channels(frame) : 1;
}
