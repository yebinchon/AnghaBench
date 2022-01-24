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
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  FATAL ; 
 int PqCommReadingMsg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(void)
{
	/*
	 * There shouldn't be a read active already, but let's check just to be
	 * sure.
	 */
	if (PqCommReadingMsg)
		FUNC0(FATAL,
				(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC2("terminating connection because protocol synchronization was lost")));

	PqCommReadingMsg = true;
}