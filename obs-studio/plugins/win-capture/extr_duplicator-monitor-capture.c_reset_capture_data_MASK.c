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
struct gs_monitor_info {int /*<<< orphan*/  rotation_degrees; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  member_0; } ;
struct duplicator_capture {int /*<<< orphan*/  rot; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  monitor; int /*<<< orphan*/  duplicator; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gs_monitor_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct duplicator_capture *capture)
{
	struct gs_monitor_info monitor_info = {0};
	gs_texture_t *texture = FUNC0(capture->duplicator);

	FUNC1(capture->monitor, &monitor_info);
	capture->width = FUNC3(texture);
	capture->height = FUNC2(texture);
	capture->x = monitor_info.x;
	capture->y = monitor_info.y;
	capture->rot = monitor_info.rotation_degrees;
}