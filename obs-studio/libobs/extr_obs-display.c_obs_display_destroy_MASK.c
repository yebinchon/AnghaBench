#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__** prev_next; TYPE_2__* next; } ;
typedef  TYPE_3__ obs_display_t ;
struct TYPE_8__ {int /*<<< orphan*/  displays_mutex; } ;
struct TYPE_11__ {TYPE_1__ data; } ;
struct TYPE_9__ {struct TYPE_9__** prev_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_6__* obs ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(obs_display_t *display)
{
	if (display) {
		FUNC4(&obs->data.displays_mutex);
		if (display->prev_next)
			*display->prev_next = display->next;
		if (display->next)
			display->next->prev_next = display->prev_next;
		FUNC5(&obs->data.displays_mutex);

		FUNC2();
		FUNC1(display);
		FUNC3();

		FUNC0(display);
	}
}