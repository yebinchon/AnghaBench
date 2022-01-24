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
struct TYPE_3__ {int roletype; int /*<<< orphan*/  rolename; } ;
typedef  TYPE_1__ RoleSpec ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  InvalidOid ; 
#define  ROLESPEC_CSTRING 131 
#define  ROLESPEC_CURRENT_USER 130 
#define  ROLESPEC_PUBLIC 129 
#define  ROLESPEC_SESSION_USER 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

Oid
FUNC8(const RoleSpec *role, bool missing_ok)
{
	Oid			oid;

	switch (role->roletype)
	{
		case ROLESPEC_CSTRING:
			FUNC0(role->rolename);
			oid = FUNC7(role->rolename, missing_ok);
			break;

		case ROLESPEC_CURRENT_USER:
			oid = FUNC2();
			break;

		case ROLESPEC_SESSION_USER:
			oid = FUNC1();
			break;

		case ROLESPEC_PUBLIC:
			FUNC4(ERROR,
					(FUNC5(ERRCODE_UNDEFINED_OBJECT),
					 FUNC6("role \"%s\" does not exist", "public")));
			oid = InvalidOid;	/* make compiler happy */
			break;

		default:
			FUNC3(ERROR, "unexpected role type %d", role->roletype);
	}

	return oid;
}