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
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  listenChannels ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(const char *channel)
{
	MemoryContext oldcontext;

	/* Do nothing if we are already listening on this channel */
	if (FUNC0(channel))
		return;

	/*
	 * Add the new channel name to listenChannels.
	 *
	 * XXX It is theoretically possible to get an out-of-memory failure here,
	 * which would be bad because we already committed.  For the moment it
	 * doesn't seem worth trying to guard against that, but maybe improve this
	 * later.
	 */
	oldcontext = FUNC1(TopMemoryContext);
	listenChannels = FUNC2(listenChannels, FUNC3(channel));
	FUNC1(oldcontext);
}