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
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_3__ {int /*<<< orphan*/  attr; } ;
typedef  TYPE_1__ os_inhibit_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  environ ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(os_inhibit_t *info)
{
	char *argv[3] = {(char *)"xdg-screensaver", (char *)"reset", NULL};
	pid_t pid;

	int err = FUNC1(&pid, "xdg-screensaver", NULL, &info->attr, argv,
			       environ);
	if (err == 0) {
		int status;
		while (FUNC2(pid, &status, 0) == -1)
			;
	} else {
		FUNC0(LOG_WARNING, "Failed to create xdg-screensaver: %d", err);
	}
}