#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mp_aframe {int /*<<< orphan*/  av_frame; int /*<<< orphan*/  speed; int /*<<< orphan*/  pts; int /*<<< orphan*/  format; int /*<<< orphan*/  chmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_aframe*,struct mp_aframe*) ; 
 struct mp_aframe* FUNC3 () ; 
 scalar_t__ FUNC4 (struct mp_aframe*) ; 

struct mp_aframe *FUNC5(struct mp_aframe *frame)
{
    if (!frame)
        return NULL;

    struct mp_aframe *dst = FUNC3();

    dst->chmap = frame->chmap;
    dst->format = frame->format;
    dst->pts = frame->pts;
    dst->speed = frame->speed;

    if (FUNC4(frame)) {
        if (FUNC1(dst->av_frame, frame->av_frame) < 0)
            FUNC0();
    } else {
        // av_frame_ref() would fail.
        FUNC2(dst, frame);
    }

    return dst;
}