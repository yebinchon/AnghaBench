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
struct xdaliclock {struct xdaliclock* clear_frame; struct xdaliclock* temp_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xdaliclock*) ; 

void FUNC1(struct xdaliclock *xdc)
{
    if (!xdc)
        return;

    FUNC0(xdc->temp_frame);
    FUNC0(xdc->clear_frame);
    FUNC0(xdc);
}