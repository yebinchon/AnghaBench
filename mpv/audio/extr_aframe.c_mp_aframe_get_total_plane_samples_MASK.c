#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mp_aframe {TYPE_1__* av_frame; } ;
struct TYPE_2__ {int nb_samples; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_aframe*) ; 

int FUNC3(struct mp_aframe *frame)
{
    return frame->av_frame->nb_samples *
           (FUNC0(FUNC2(frame))
            ? 1 : FUNC1(frame));
}