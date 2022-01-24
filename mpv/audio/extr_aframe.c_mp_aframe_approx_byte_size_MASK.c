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
 size_t FUNC0 (int,int) ; 
 int FUNC1 (size_t,int) ; 
 int FUNC2 (struct mp_aframe*) ; 
 size_t FUNC3 (struct mp_aframe*) ; 

int FUNC4(struct mp_aframe *frame)
{
    // God damn, AVFrame is too fucking annoying. Just go with the size that
    // allocating a new frame would use.
    int planes = FUNC2(frame);
    size_t sstride = FUNC3(frame);
    int samples = frame->av_frame->nb_samples;
    int plane_size = FUNC1(sstride * FUNC0(samples, 1), 32);
    return plane_size * planes + sizeof(*frame);
}