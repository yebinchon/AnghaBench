#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* reason; int /*<<< orphan*/  attr; int /*<<< orphan*/  stop_event; int /*<<< orphan*/  dbus; } ;
typedef  TYPE_1__ os_inhibit_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(os_inhibit_t *info)
{
	if (info) {
		FUNC3(info, false);
#if HAVE_DBUS
		dbus_sleep_info_destroy(info->dbus);
#endif
		FUNC2(info->stop_event);
		FUNC4(&info->attr);
		FUNC0(info->reason);
		FUNC0(info);
	}
}