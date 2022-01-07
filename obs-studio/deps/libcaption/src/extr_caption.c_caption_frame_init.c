
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int front; int back; int xds; } ;
typedef TYPE_1__ caption_frame_t ;


 int caption_frame_buffer_clear (int *) ;
 int caption_frame_state_clear (TYPE_1__*) ;
 int xds_init (int *) ;

void caption_frame_init(caption_frame_t* frame)
{
    xds_init(&frame->xds);
    caption_frame_state_clear(frame);
    caption_frame_buffer_clear(&frame->back);
    caption_frame_buffer_clear(&frame->front);
}
