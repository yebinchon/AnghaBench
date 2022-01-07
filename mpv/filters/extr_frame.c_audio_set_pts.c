
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_aframe_set_pts (void*,double) ;

__attribute__((used)) static void audio_set_pts(void *data, double pts)
{
    mp_aframe_set_pts(data, pts);
}
