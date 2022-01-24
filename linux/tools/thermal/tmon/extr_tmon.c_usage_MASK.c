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
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2()
{
	FUNC1("Usage: tmon [OPTION...]\n");
	FUNC1("  -c, --control         cooling device in control\n");
	FUNC1("  -d, --daemon          run as daemon, no TUI\n");
	FUNC1("  -g, --debug           debug message in syslog\n");
	FUNC1("  -h, --help            show this help message\n");
	FUNC1("  -l, --log             log data to /var/tmp/tmon.log\n");
	FUNC1("  -t, --time-interval   sampling time interval, > 1 sec.\n");
	FUNC1("  -T, --target-temp     initial target temperature\n");
	FUNC1("  -v, --version         show version\n");
	FUNC1("  -z, --zone            target thermal zone id\n");

	FUNC0(0);
}