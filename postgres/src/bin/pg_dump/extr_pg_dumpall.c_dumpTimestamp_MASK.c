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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  OPF ; 
 int /*<<< orphan*/  PGDUMP_STRFTIME_FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(const char *msg)
{
	char		buf[64];
	time_t		now = FUNC3(NULL);

	if (FUNC2(buf, sizeof(buf), PGDUMP_STRFTIME_FMT, FUNC1(&now)) != 0)
		FUNC0(OPF, "-- %s %s\n\n", msg, buf);
}