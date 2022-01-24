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
struct mp_rect {void* y1; void* x1; void* y0; void* x0; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 void* FUNC1 (void*,void*) ; 

void FUNC2(struct mp_rect *rc, const struct mp_rect *rc2)
{
    rc->x0 = FUNC1(rc->x0, rc2->x0);
    rc->y0 = FUNC1(rc->y0, rc2->y0);
    rc->x1 = FUNC0(rc->x1, rc2->x1);
    rc->y1 = FUNC0(rc->y1, rc2->y1);
}