#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_aframe {double speed; TYPE_1__* av_frame; int /*<<< orphan*/  chmap; int /*<<< orphan*/  format; } ;
struct avframe_opaque {double speed; } ;
struct AVFrame {int dummy; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ format; TYPE_2__* opaque_ref; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int) ; 
 struct AVFrame* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct AVFrame *FUNC4(struct mp_aframe *frame)
{
    if (!frame)
        return NULL;

    if (FUNC0(frame->format) != frame->av_frame->format)
        return NULL;

    if (!FUNC3(&frame->chmap))
        return NULL;

    if (!frame->av_frame->opaque_ref && frame->speed != 1.0) {
        frame->av_frame->opaque_ref =
            FUNC1(sizeof(struct avframe_opaque));
        if (!frame->av_frame->opaque_ref)
            return NULL;

        struct avframe_opaque *op = (void *)frame->av_frame->opaque_ref->data;
        op->speed = frame->speed;
    }

    return FUNC2(frame->av_frame);
}