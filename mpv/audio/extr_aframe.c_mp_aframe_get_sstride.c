
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_aframe {int dummy; } ;


 scalar_t__ af_fmt_is_planar (int) ;
 int af_fmt_to_bytes (int) ;
 int mp_aframe_get_channels (struct mp_aframe*) ;
 int mp_aframe_get_format (struct mp_aframe*) ;

size_t mp_aframe_get_sstride(struct mp_aframe *frame)
{
    int format = mp_aframe_get_format(frame);
    return af_fmt_to_bytes(format) *
           (af_fmt_is_planar(format) ? 1 : mp_aframe_get_channels(frame));
}
