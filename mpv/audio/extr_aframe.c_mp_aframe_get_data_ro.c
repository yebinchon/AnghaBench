
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mp_aframe {TYPE_1__* av_frame; } ;
struct TYPE_2__ {int ** extended_data; } ;


 scalar_t__ mp_aframe_is_allocated (struct mp_aframe*) ;

uint8_t **mp_aframe_get_data_ro(struct mp_aframe *frame)
{
    return mp_aframe_is_allocated(frame) ? frame->av_frame->extended_data : ((void*)0);
}
