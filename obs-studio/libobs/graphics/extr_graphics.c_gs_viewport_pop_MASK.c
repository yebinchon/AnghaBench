#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gs_rect {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {int /*<<< orphan*/  num; } ;
struct TYPE_4__ {TYPE_2__ viewport_stack; } ;

/* Variables and functions */
 struct gs_rect* FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* thread_graphics ; 

void FUNC4(void)
{
	struct gs_rect *rect;

	if (!FUNC3("gs_viewport_pop"))
		return;
	if (!thread_graphics->viewport_stack.num)
		return;

	rect = FUNC0(thread_graphics->viewport_stack);
	FUNC2(rect->x, rect->y, rect->cx, rect->cy);
	FUNC1(thread_graphics->viewport_stack);
}