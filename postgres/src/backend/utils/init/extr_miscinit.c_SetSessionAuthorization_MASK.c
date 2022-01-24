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
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AuthenticatedUserId ; 
 int /*<<< orphan*/  AuthenticatedUserIsSuperuser ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  PGC_INTERNAL ; 
 int /*<<< orphan*/  PGC_S_OVERRIDE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(Oid userid, bool is_superuser)
{
	/* Must have authenticated already, else can't make permission check */
	FUNC0(FUNC1(AuthenticatedUserId));

	if (userid != AuthenticatedUserId &&
		!AuthenticatedUserIsSuperuser)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC6("permission denied to set session authorization")));

	FUNC3(userid, is_superuser);

	FUNC2("is_superuser",
					is_superuser ? "on" : "off",
					PGC_INTERNAL, PGC_S_OVERRIDE);
}