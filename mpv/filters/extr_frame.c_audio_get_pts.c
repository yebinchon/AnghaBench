
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double mp_aframe_get_pts (void*) ;

__attribute__((used)) static double audio_get_pts(void *data)
{
    return mp_aframe_get_pts(data);
}
