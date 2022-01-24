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
typedef  int /*<<< orphan*/  GucSource ;
typedef  scalar_t__ GucContext ;

/* Variables and functions */
 scalar_t__ PGC_POSTMASTER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

void
FUNC2(int debug_flag, GucContext context, GucSource source)
{
	if (debug_flag > 0)
	{
		char		debugstr[64];

		FUNC1(debugstr, "debug%d", debug_flag);
		FUNC0("log_min_messages", debugstr, context, source);
	}
	else
		FUNC0("log_min_messages", "notice", context, source);

	if (debug_flag >= 1 && context == PGC_POSTMASTER)
	{
		FUNC0("log_connections", "true", context, source);
		FUNC0("log_disconnections", "true", context, source);
	}
	if (debug_flag >= 2)
		FUNC0("log_statement", "all", context, source);
	if (debug_flag >= 3)
		FUNC0("debug_print_parse", "true", context, source);
	if (debug_flag >= 4)
		FUNC0("debug_print_plan", "true", context, source);
	if (debug_flag >= 5)
		FUNC0("debug_print_rewritten", "true", context, source);
}