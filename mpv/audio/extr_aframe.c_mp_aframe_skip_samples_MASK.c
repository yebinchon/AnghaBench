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
struct mp_aframe {scalar_t__ pts; TYPE_1__* av_frame; } ;
struct TYPE_2__ {int nb_samples; scalar_t__* extended_data; } ;

/* Variables and functions */
 scalar_t__ MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 int FUNC3 (struct mp_aframe*) ; 
 int FUNC4 (struct mp_aframe*) ; 
 int FUNC5 (struct mp_aframe*) ; 
 size_t FUNC6 (struct mp_aframe*) ; 

void FUNC7(struct mp_aframe *f, int samples)
{
    FUNC0(samples >= 0 && samples <= FUNC5(f));

    if (FUNC1(f->av_frame) < 0)
        return; // go complain to ffmpeg

    int num_planes = FUNC4(f);
    size_t sstride = FUNC6(f);
    for (int n = 0; n < num_planes; n++) {
        FUNC2(f->av_frame->extended_data[n],
                f->av_frame->extended_data[n] + samples * sstride,
                (f->av_frame->nb_samples - samples) * sstride);
    }

    f->av_frame->nb_samples -= samples;

    if (f->pts != MP_NOPTS_VALUE)
        f->pts += samples / FUNC3(f);
}