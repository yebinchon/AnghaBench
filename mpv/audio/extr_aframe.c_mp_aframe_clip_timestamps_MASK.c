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
struct mp_aframe {double pts; TYPE_1__* av_frame; } ;
struct TYPE_2__ {void* nb_samples; } ;

/* Variables and functions */
 void* FUNC0 (int,int /*<<< orphan*/ ,void*) ; 
 double MP_NOPTS_VALUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (struct mp_aframe*) ; 
 double FUNC3 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_aframe*,int) ; 

void FUNC6(struct mp_aframe *f, double start, double end)
{
    double f_end = FUNC2(f);
    double rate = FUNC3(f);
    if (f_end == MP_NOPTS_VALUE)
        return;
    if (FUNC1(FUNC4(f)))
        return;
    if (end != MP_NOPTS_VALUE) {
        if (f_end >= end) {
            if (f->pts >= end) {
                f->av_frame->nb_samples = 0;
            } else {
                int new = (end - f->pts) * rate;
                f->av_frame->nb_samples = FUNC0(new, 0, f->av_frame->nb_samples);
            }
        }
    }
    if (start != MP_NOPTS_VALUE) {
        if (f->pts < start) {
            if (f_end <= start) {
                f->av_frame->nb_samples = 0;
                f->pts = f_end;
            } else {
                int skip = (start - f->pts) * rate;
                skip = FUNC0(skip, 0, f->av_frame->nb_samples);
                FUNC5(f, skip);
            }
        }
    }
}