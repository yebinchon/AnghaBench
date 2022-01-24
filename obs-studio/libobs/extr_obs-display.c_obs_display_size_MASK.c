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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  draw_info_mutex; scalar_t__ cy; scalar_t__ cx; } ;
typedef  TYPE_1__ obs_display_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(obs_display_t *display, uint32_t *width, uint32_t *height)
{
	*width = 0;
	*height = 0;

	if (display) {
		FUNC0(&display->draw_info_mutex);

		*width = display->cx;
		*height = display->cy;

		FUNC1(&display->draw_info_mutex);
	}
}