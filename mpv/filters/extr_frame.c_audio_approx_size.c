
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_aframe_approx_byte_size (void*) ;

__attribute__((used)) static int audio_approx_size(void *data)
{
    return mp_aframe_approx_byte_size(data);
}
