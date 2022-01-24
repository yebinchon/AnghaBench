#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int roletype; char* rolename; } ;
typedef  TYPE_1__ RoleSpec ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHNAME ; 
 int /*<<< orphan*/  AUTHOID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
#define  ROLESPEC_CSTRING 131 
#define  ROLESPEC_CURRENT_USER 130 
#define  ROLESPEC_PUBLIC 129 
#define  ROLESPEC_SESSION_USER 128 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

HeapTuple
FUNC10(const RoleSpec *role)
{
	HeapTuple	tuple;

	switch (role->roletype)
	{
		case ROLESPEC_CSTRING:
			FUNC0(role->rolename);
			tuple = FUNC5(AUTHNAME, FUNC1(role->rolename));
			if (!FUNC4(tuple))
				FUNC7(ERROR,
						(FUNC8(ERRCODE_UNDEFINED_OBJECT),
						 FUNC9("role \"%s\" does not exist", role->rolename)));
			break;

		case ROLESPEC_CURRENT_USER:
			tuple = FUNC5(AUTHOID, FUNC3());
			if (!FUNC4(tuple))
				FUNC6(ERROR, "cache lookup failed for role %u", FUNC3());
			break;

		case ROLESPEC_SESSION_USER:
			tuple = FUNC5(AUTHOID, FUNC2());
			if (!FUNC4(tuple))
				FUNC6(ERROR, "cache lookup failed for role %u", FUNC2());
			break;

		case ROLESPEC_PUBLIC:
			FUNC7(ERROR,
					(FUNC8(ERRCODE_UNDEFINED_OBJECT),
					 FUNC9("role \"%s\" does not exist", "public")));
			tuple = NULL;		/* make compiler happy */
			break;

		default:
			FUNC6(ERROR, "unexpected role type %d", role->roletype);
	}

	return tuple;
}