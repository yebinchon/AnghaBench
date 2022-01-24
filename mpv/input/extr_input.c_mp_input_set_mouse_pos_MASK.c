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
struct input_ctx {TYPE_1__* opts; } ;
struct TYPE_2__ {scalar_t__ enable_mouse_movements; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_ctx*,int,int) ; 

void FUNC3(struct input_ctx *ictx, int x, int y)
{
    FUNC0(ictx);
    if (ictx->opts->enable_mouse_movements)
        FUNC2(ictx, x, y);
    FUNC1(ictx);
}