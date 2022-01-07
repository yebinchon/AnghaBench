
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libcaption_stauts_t ;
struct TYPE_3__ {int back; int front; } ;
typedef TYPE_1__ caption_frame_t ;
typedef int caption_frame_buffer_t ;


 int LIBCAPTION_READY ;
 int caption_frame_buffer_clear (int *) ;
 int memcpy (int *,int *,int) ;

libcaption_stauts_t caption_frame_end(caption_frame_t* frame)
{
    memcpy(&frame->front, &frame->back, sizeof(caption_frame_buffer_t));
    caption_frame_buffer_clear(&frame->back);
    return LIBCAPTION_READY;
}
