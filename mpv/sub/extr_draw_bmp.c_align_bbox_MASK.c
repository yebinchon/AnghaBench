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
struct mp_rect {int x0; int y0; void* y1; void* x1; } ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 

__attribute__((used)) static void FUNC1(int xstep, int ystep, struct mp_rect *rc)
{
    rc->x0 = rc->x0 & ~(xstep - 1);
    rc->y0 = rc->y0 & ~(ystep - 1);
    rc->x1 = FUNC0(rc->x1, xstep);
    rc->y1 = FUNC0(rc->y1, ystep);
}