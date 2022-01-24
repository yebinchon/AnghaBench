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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentUserId ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  SECURITY_LOCAL_USERID_CHANGE ; 
 int /*<<< orphan*/  SecurityRestrictionContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

void
FUNC4(Oid userid, bool sec_def_context)
{
	/* We throw the same error SET ROLE would. */
	if (FUNC0())
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC3("cannot set parameter \"%s\" within security-restricted operation",
						"role")));
	CurrentUserId = userid;
	if (sec_def_context)
		SecurityRestrictionContext |= SECURITY_LOCAL_USERID_CHANGE;
	else
		SecurityRestrictionContext &= ~SECURITY_LOCAL_USERID_CHANGE;
}