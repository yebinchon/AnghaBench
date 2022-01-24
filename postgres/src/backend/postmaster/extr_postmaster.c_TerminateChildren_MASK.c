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
 scalar_t__ AutoVacPID ; 
 scalar_t__ BgWriterPID ; 
 scalar_t__ CheckpointerPID ; 
 scalar_t__ PgArchPID ; 
 scalar_t__ PgStatPID ; 
 int SIGKILL ; 
 int SIGQUIT ; 
 int /*<<< orphan*/  STARTUP_SIGNALED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ StartupPID ; 
 int /*<<< orphan*/  StartupStatus ; 
 scalar_t__ WalReceiverPID ; 
 scalar_t__ WalWriterPID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(int signal)
{
	FUNC0(signal);
	if (StartupPID != 0)
	{
		FUNC1(StartupPID, signal);
		if (signal == SIGQUIT || signal == SIGKILL)
			StartupStatus = STARTUP_SIGNALED;
	}
	if (BgWriterPID != 0)
		FUNC1(BgWriterPID, signal);
	if (CheckpointerPID != 0)
		FUNC1(CheckpointerPID, signal);
	if (WalWriterPID != 0)
		FUNC1(WalWriterPID, signal);
	if (WalReceiverPID != 0)
		FUNC1(WalReceiverPID, signal);
	if (AutoVacPID != 0)
		FUNC1(AutoVacPID, signal);
	if (PgArchPID != 0)
		FUNC1(PgArchPID, signal);
	if (PgStatPID != 0)
		FUNC1(PgStatPID, signal);
}