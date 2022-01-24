#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ num; } ;
struct mp_aframe {int format; int /*<<< orphan*/  speed; TYPE_2__ chmap; TYPE_4__* av_frame; } ;
struct avframe_opaque {int /*<<< orphan*/  speed; } ;
struct AVFrame {scalar_t__ width; scalar_t__ height; TYPE_1__* opaque_ref; int /*<<< orphan*/  channels; int /*<<< orphan*/  format; } ;
struct TYPE_7__ {scalar_t__ channels; int /*<<< orphan*/  channel_layout; } ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AV_SAMPLE_FMT_NONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*,struct AVFrame*) ; 
 struct mp_aframe* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

struct mp_aframe *FUNC6(struct AVFrame *av_frame)
{
    if (!av_frame || av_frame->width > 0 || av_frame->height > 0)
        return NULL;

    int format = FUNC1(av_frame->format);
    if (!format && av_frame->format != AV_SAMPLE_FMT_NONE)
        return NULL;

    struct mp_aframe *frame = FUNC3();

    // This also takes care of forcing refcounting.
    if (FUNC2(frame->av_frame, av_frame) < 0)
        FUNC0();

    frame->format = format;
    FUNC5(&frame->chmap, frame->av_frame->channel_layout);

#if LIBAVUTIL_VERSION_MICRO >= 100
    // FFmpeg being a stupid POS again
    if (frame->chmap.num != frame->av_frame->channels)
        mp_chmap_from_channels(&frame->chmap, av_frame->channels);
#endif

    if (av_frame->opaque_ref) {
        struct avframe_opaque *op = (void *)av_frame->opaque_ref->data;
        frame->speed = op->speed;
    }

    return frame;
}