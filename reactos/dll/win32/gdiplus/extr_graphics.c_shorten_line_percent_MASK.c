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
typedef  scalar_t__ REAL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(REAL x1, REAL  y1, REAL *x2, REAL *y2, REAL percent)
{
    REAL dist, theta, dx, dy;

    if((y1 == *y2) && (x1 == *x2))
        return;

    dist = FUNC3((*x2 - x1) * (*x2 - x1) + (*y2 - y1) * (*y2 - y1)) * -percent;
    theta = FUNC1((*y2 - y1), (*x2 - x1));
    dx = FUNC0(theta) * dist;
    dy = FUNC2(theta) * dist;

    *x2 = *x2 + dx;
    *y2 = *y2 + dy;
}