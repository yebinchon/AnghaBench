#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_aframe {TYPE_1__* av_frame; int /*<<< orphan*/  speed; int /*<<< orphan*/  pts; } ;
struct TYPE_3__ {int sample_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 

void FUNC2(struct mp_aframe *dst, struct mp_aframe *src)
{
    dst->pts = src->pts;
    dst->speed = src->speed;

    int rate = dst->av_frame->sample_rate;

    if (FUNC1(dst->av_frame, src->av_frame) < 0)
        FUNC0();

    dst->av_frame->sample_rate = rate;
}