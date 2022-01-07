
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFrame ;


 int * mp_aframe_to_avframe (void*) ;

__attribute__((used)) static AVFrame *audio_new_av_ref(void *data)
{
    return mp_aframe_to_avframe(data);
}
