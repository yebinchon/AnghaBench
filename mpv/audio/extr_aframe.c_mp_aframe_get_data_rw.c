
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mp_aframe {TYPE_1__* av_frame; } ;
struct TYPE_2__ {int ** extended_data; } ;


 scalar_t__ av_frame_make_writable (TYPE_1__*) ;
 int mp_aframe_is_allocated (struct mp_aframe*) ;

uint8_t **mp_aframe_get_data_rw(struct mp_aframe *frame)
{
    if (!mp_aframe_is_allocated(frame))
        return ((void*)0);
    if (av_frame_make_writable(frame->av_frame) < 0)
        return ((void*)0);
    return frame->av_frame->extended_data;
}
