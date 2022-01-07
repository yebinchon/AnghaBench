
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ num; } ;
struct mp_aframe {int format; int speed; TYPE_2__ chmap; TYPE_4__* av_frame; } ;
struct avframe_opaque {int speed; } ;
struct AVFrame {scalar_t__ width; scalar_t__ height; TYPE_1__* opaque_ref; int channels; int format; } ;
struct TYPE_7__ {scalar_t__ channels; int channel_layout; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int AV_SAMPLE_FMT_NONE ;
 int abort () ;
 int af_from_avformat (int ) ;
 scalar_t__ av_frame_ref (TYPE_4__*,struct AVFrame*) ;
 struct mp_aframe* mp_aframe_create () ;
 int mp_chmap_from_channels (TYPE_2__*,int ) ;
 int mp_chmap_from_lavc (TYPE_2__*,int ) ;

struct mp_aframe *mp_aframe_from_avframe(struct AVFrame *av_frame)
{
    if (!av_frame || av_frame->width > 0 || av_frame->height > 0)
        return ((void*)0);

    int format = af_from_avformat(av_frame->format);
    if (!format && av_frame->format != AV_SAMPLE_FMT_NONE)
        return ((void*)0);

    struct mp_aframe *frame = mp_aframe_create();


    if (av_frame_ref(frame->av_frame, av_frame) < 0)
        abort();

    frame->format = format;
    mp_chmap_from_lavc(&frame->chmap, frame->av_frame->channel_layout);







    if (av_frame->opaque_ref) {
        struct avframe_opaque *op = (void *)av_frame->opaque_ref->data;
        frame->speed = op->speed;
    }

    return frame;
}
