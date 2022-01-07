
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_callbacks {void* frame_free; void* frame_initialize; int initialize; int format; void* frame; void* opaque; } ;
typedef int ff_callback_initialize ;
typedef void* ff_callback_frame ;
typedef int ff_callback_format ;



void ff_demuxer_set_callbacks(struct ff_callbacks *callbacks,
                              ff_callback_frame frame,
                              ff_callback_format format,
                              ff_callback_initialize initialize,
                              ff_callback_frame frame_initialize,
                              ff_callback_frame frame_free, void *opaque)
{
 callbacks->opaque = opaque;
 callbacks->frame = frame;
 callbacks->format = format;
 callbacks->initialize = initialize;
 callbacks->frame_initialize = frame_initialize;
 callbacks->frame_free = frame_free;
}
