#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_3__ {int size_changed; int /*<<< orphan*/  draw_info_mutex; void* cy; void* cx; } ;
typedef  TYPE_1__ obs_display_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(obs_display_t *display, uint32_t cx, uint32_t cy)
{
	if (!display)
		return;

	FUNC0(&display->draw_info_mutex);

	display->cx = cx;
	display->cy = cy;
	display->size_changed = true;

	FUNC1(&display->draw_info_mutex);
}