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
struct os_inhibit_info {int /*<<< orphan*/  reason; int /*<<< orphan*/  attr; int /*<<< orphan*/  stop_event; int /*<<< orphan*/  dbus; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  struct os_inhibit_info os_inhibit_t ;

/* Variables and functions */
 int /*<<< orphan*/  OS_EVENT_TYPE_AUTO ; 
 int POSIX_SPAWN_SETSIGDEF ; 
 int POSIX_SPAWN_SETSIGMASK ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 struct os_inhibit_info* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

os_inhibit_t *FUNC10(const char *reason)
{
	struct os_inhibit_info *info = FUNC1(sizeof(*info));
	sigset_t set;

#if HAVE_DBUS
	info->dbus = dbus_sleep_info_create();
#endif

	FUNC3(&info->stop_event, OS_EVENT_TYPE_AUTO);
	FUNC4(&info->attr);

	FUNC9(&set);
	FUNC7(&info->attr, &set);
	FUNC8(&set, SIGPIPE);
	FUNC6(&info->attr, &set);
	FUNC5(&info->attr, POSIX_SPAWN_SETSIGDEF |
						      POSIX_SPAWN_SETSIGMASK);

	info->reason = FUNC0(reason);
	return info;
}