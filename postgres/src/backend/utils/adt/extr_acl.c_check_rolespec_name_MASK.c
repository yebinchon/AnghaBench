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
struct TYPE_3__ {scalar_t__ roletype; int /*<<< orphan*/  rolename; } ;
typedef  TYPE_1__ RoleSpec ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_RESERVED_NAME ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ROLESPEC_CSTRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void
FUNC5(const RoleSpec *role, const char *detail_msg)
{
	if (!role)
		return;

	if (role->roletype != ROLESPEC_CSTRING)
		return;

	if (FUNC0(role->rolename))
	{
		if (detail_msg)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_RESERVED_NAME),
					 FUNC4("role name \"%s\" is reserved",
							role->rolename),
					 FUNC3("%s", detail_msg)));
		else
			FUNC1(ERROR,
					(FUNC2(ERRCODE_RESERVED_NAME),
					 FUNC4("role name \"%s\" is reserved",
							role->rolename)));
	}
}