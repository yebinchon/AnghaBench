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
struct TYPE_2__ {double nb_samples; } ;

/* Variables and functions */
 double FUNC0 (struct mp_aframe*) ; 

double FUNC1(struct mp_aframe *f)
{
    double rate = FUNC0(f);
    if (rate <= 0)
        return 0;
    return f->av_frame->nb_samples / rate;
}