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
struct interval {int refresh; int horizon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct interval) ; 

void
FUNC1(struct interval *top, int horizon, int refresh)
{
    FUNC0(*top);
    top->refresh = refresh;
    top->horizon = horizon;
}