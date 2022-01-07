
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFrame ;


 void* mp_aframe_from_avframe (int *) ;

__attribute__((used)) static void *audio_from_av_ref(AVFrame *data)
{
    return mp_aframe_from_avframe(data);
}
