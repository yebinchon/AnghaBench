
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_aframe {int av_frame; } ;


 int av_frame_free (int *) ;

__attribute__((used)) static void free_frame(void *ptr)
{
    struct mp_aframe *frame = ptr;
    av_frame_free(&frame->av_frame);
}
