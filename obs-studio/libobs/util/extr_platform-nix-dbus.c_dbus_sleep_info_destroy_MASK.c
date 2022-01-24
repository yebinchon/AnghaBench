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
struct dbus_sleep_info {int /*<<< orphan*/  c; scalar_t__ pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dbus_sleep_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct dbus_sleep_info *info)
{
	if (info) {
		if (info->pending) {
			FUNC3(info->pending);
			FUNC4(info->pending);
		}

		FUNC1(info->c);
		FUNC2(info->c);
		FUNC0(info);
	}
}