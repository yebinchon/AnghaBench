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
 int DEFAULT_PING_RATE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(char *progname)
{
	FUNC0("Usage: %s [options]\n", progname);
	FUNC0(" -f, --file\t\tOpen watchdog device file\n");
	FUNC0("\t\t\tDefault is /dev/watchdog\n");
	FUNC0(" -i, --info\t\tShow watchdog_info\n");
	FUNC0(" -b, --bootstatus\tGet last boot status (Watchdog/POR)\n");
	FUNC0(" -d, --disable\t\tTurn off the watchdog timer\n");
	FUNC0(" -e, --enable\t\tTurn on the watchdog timer\n");
	FUNC0(" -h, --help\t\tPrint the help message\n");
	FUNC0(" -p, --pingrate=P\tSet ping rate to P seconds (default %d)\n",
	       DEFAULT_PING_RATE);
	FUNC0(" -t, --timeout=T\tSet timeout to T seconds\n");
	FUNC0(" -T, --gettimeout\tGet the timeout\n");
	FUNC0(" -n, --pretimeout=T\tSet the pretimeout to T seconds\n");
	FUNC0(" -N, --getpretimeout\tGet the pretimeout\n");
	FUNC0(" -L, --gettimeleft\tGet the time left until timer expires\n");
	FUNC0("\n");
	FUNC0("Parameters are parsed left-to-right in real-time.\n");
	FUNC0("Example: %s -d -t 10 -p 5 -e\n", progname);
	FUNC0("Example: %s -t 12 -T -n 7 -N\n", progname);
}