#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int handler_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigTermHandler ; 
 TYPE_1__ signal_info ; 

__attribute__((used)) static void
FUNC1(void)
{
	/*
	 * When forking, signal_info.handler_set will propagate into the new
	 * process, but that's fine because the signal handler state does too.
	 */
	if (!signal_info.handler_set)
	{
		signal_info.handler_set = true;

		FUNC0(SIGINT, sigTermHandler);
		FUNC0(SIGTERM, sigTermHandler);
		FUNC0(SIGQUIT, sigTermHandler);
	}
}