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
struct mp_aframe {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct mp_aframe*) ; 
 int FUNC3 (struct mp_aframe*) ; 

size_t FUNC4(struct mp_aframe *frame)
{
    int format = FUNC3(frame);
    return FUNC1(format) *
           (FUNC0(format) ? 1 : FUNC2(frame));
}