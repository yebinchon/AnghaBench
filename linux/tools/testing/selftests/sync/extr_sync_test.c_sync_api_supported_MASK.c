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
struct stat {int dummy; } ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct stat sbuf;
	int ret;

	ret = FUNC2("/sys/kernel/debug/sync/sw_sync", &sbuf);
	if (!ret)
		return;

	if (errno == ENOENT)
		FUNC1("Sync framework not supported by kernel\n");

	if (errno == EACCES)
		FUNC1("Run Sync test as root.\n");

	FUNC0("stat failed on /sys/kernel/debug/sync/sw_sync: %s",
				FUNC3(errno));
}