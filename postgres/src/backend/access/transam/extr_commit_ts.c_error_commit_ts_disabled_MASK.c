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
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	FUNC1(ERROR,
			(FUNC2(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
			 FUNC4("could not get commit timestamp data"),
			 FUNC0() ?
			 FUNC3("Make sure the configuration parameter \"%s\" is set on the master server.",
					 "track_commit_timestamp") :
			 FUNC3("Make sure the configuration parameter \"%s\" is set.",
					 "track_commit_timestamp")));
}