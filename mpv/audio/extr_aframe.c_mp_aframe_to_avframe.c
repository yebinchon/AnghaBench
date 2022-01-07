
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_aframe {double speed; TYPE_1__* av_frame; int chmap; int format; } ;
struct avframe_opaque {double speed; } ;
struct AVFrame {int dummy; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ format; TYPE_2__* opaque_ref; } ;


 scalar_t__ af_to_avformat (int ) ;
 TYPE_2__* av_buffer_alloc (int) ;
 struct AVFrame* av_frame_clone (TYPE_1__*) ;
 int mp_chmap_is_lavc (int *) ;

struct AVFrame *mp_aframe_to_avframe(struct mp_aframe *frame)
{
    if (!frame)
        return ((void*)0);

    if (af_to_avformat(frame->format) != frame->av_frame->format)
        return ((void*)0);

    if (!mp_chmap_is_lavc(&frame->chmap))
        return ((void*)0);

    if (!frame->av_frame->opaque_ref && frame->speed != 1.0) {
        frame->av_frame->opaque_ref =
            av_buffer_alloc(sizeof(struct avframe_opaque));
        if (!frame->av_frame->opaque_ref)
            return ((void*)0);

        struct avframe_opaque *op = (void *)frame->av_frame->opaque_ref->data;
        op->speed = frame->speed;
    }

    return av_frame_clone(frame->av_frame);
}
