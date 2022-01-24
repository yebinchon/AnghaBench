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
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ am_walsender ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char firstchar)
{
	if (am_walsender)
	{
		if (firstchar == 'F')
			FUNC0(ERROR,
					(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC2("fastpath function calls not supported in a replication connection")));
		else
			FUNC0(ERROR,
					(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC2("extended query protocol not supported in a replication connection")));
	}
}