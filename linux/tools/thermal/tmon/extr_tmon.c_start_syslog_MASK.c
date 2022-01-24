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
 int LOG_CONS ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_LOCAL0 ; 
 int LOG_NDELAY ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int LOG_PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ debug_on ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	if (debug_on)
		FUNC3(FUNC0(LOG_DEBUG));
	else
		FUNC3(FUNC0(LOG_ERR));
	FUNC2("tmon.log", LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL0);
	FUNC4(LOG_NOTICE, "TMON started by User %d", FUNC1());
}