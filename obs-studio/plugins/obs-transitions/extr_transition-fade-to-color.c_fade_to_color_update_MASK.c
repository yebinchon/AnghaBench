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
typedef  int uint32_t ;
struct fade_to_color_info {float switch_point; int /*<<< orphan*/  color; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  S_COLOR ; 
 int /*<<< orphan*/  S_SWITCH_POINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(void *data, obs_data_t *settings)
{
	struct fade_to_color_info *fade_to_color = data;
	uint32_t color = (uint32_t)FUNC0(settings, S_COLOR);
	uint32_t swp = (uint32_t)FUNC0(settings, S_SWITCH_POINT);

	color |= 0xFF000000;

	FUNC1(&fade_to_color->color, color);

	fade_to_color->switch_point = (float)swp / 100.0f;
}