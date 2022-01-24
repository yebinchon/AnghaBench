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
typedef  int /*<<< orphan*/  ObjectType ;
typedef  int AclResult ;

/* Variables and functions */
#define  ACLCHECK_NOT_OWNER 130 
#define  ACLCHECK_NO_PRIV 129 
#define  ACLCHECK_OK 128 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*) ; 

void
FUNC5(AclResult aclerr, ObjectType objtype,
				   const char *objectname, const char *colname)
{
	switch (aclerr)
	{
		case ACLCHECK_OK:
			/* no error, so return to caller */
			break;
		case ACLCHECK_NO_PRIV:
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC4("permission denied for column \"%s\" of relation \"%s\"",
							colname, objectname)));
			break;
		case ACLCHECK_NOT_OWNER:
			/* relation msg is OK since columns don't have separate owners */
			FUNC0(aclerr, objtype, objectname);
			break;
		default:
			FUNC1(ERROR, "unrecognized AclResult: %d", (int) aclerr);
			break;
	}
}