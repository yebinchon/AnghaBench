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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC0(!IsUnderPostmaster);

	/*
	 * We don't actually need any non-default signal handling in bootstrap
	 * mode; "curl up and die" is a sufficient response for all these cases.
	 * Let's set that handling explicitly, as documentation if nothing else.
	 */
	FUNC1(SIGHUP, SIG_DFL);
	FUNC1(SIGINT, SIG_DFL);
	FUNC1(SIGTERM, SIG_DFL);
	FUNC1(SIGQUIT, SIG_DFL);
}