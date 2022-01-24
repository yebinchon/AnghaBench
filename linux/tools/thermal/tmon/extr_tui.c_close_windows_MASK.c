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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ control_window ; 
 scalar_t__ cooling_device_window ; 
 int /*<<< orphan*/  data_panel ; 
 int /*<<< orphan*/  dialogue_panel ; 
 scalar_t__ dialogue_window ; 
 scalar_t__ status_bar_window ; 
 scalar_t__ thermal_data_window ; 
 scalar_t__ title_bar_window ; 
 scalar_t__ tui_disabled ; 
 scalar_t__ tz_sensor_window ; 

void FUNC2(void)
{
	if (tui_disabled)
		return;
	/* must delete panels before their attached windows */
	if (dialogue_window)
		FUNC0(dialogue_panel);
	if (cooling_device_window)
		FUNC0(data_panel);

	FUNC1(title_bar_window);
	FUNC1(tz_sensor_window);
	FUNC1(status_bar_window);
	FUNC1(cooling_device_window);
	FUNC1(control_window);
	FUNC1(thermal_data_window);
	FUNC1(dialogue_window);

}