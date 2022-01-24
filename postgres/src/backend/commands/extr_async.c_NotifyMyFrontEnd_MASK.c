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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  StringInfoData ;

/* Variables and functions */
 scalar_t__ DestRemote ; 
 int /*<<< orphan*/  FrontendProtocol ; 
 int /*<<< orphan*/  INFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ whereToSendOutput ; 

void
FUNC6(const char *channel, const char *payload, int32 srcPid)
{
	if (whereToSendOutput == DestRemote)
	{
		StringInfoData buf;

		FUNC2(&buf, 'A');
		FUNC4(&buf, srcPid);
		FUNC5(&buf, channel);
		if (FUNC0(FrontendProtocol) >= 3)
			FUNC5(&buf, payload);
		FUNC3(&buf);

		/*
		 * NOTE: we do not do pq_flush() here.  For a self-notify, it will
		 * happen at the end of the transaction, and for incoming notifies
		 * ProcessIncomingNotify will do it after finding all the notifies.
		 */
	}
	else
		FUNC1(INFO, "NOTIFY for \"%s\" payload \"%s\"", channel, payload);
}