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
struct gs_rect {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  viewport_stack; } ;

/* Variables and functions */
 struct gs_rect* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gs_rect*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* thread_graphics ; 

void FUNC3(void)
{
	if (!FUNC2("gs_viewport_push"))
		return;

	struct gs_rect *rect =
		FUNC0(thread_graphics->viewport_stack);
	FUNC1(rect);
}