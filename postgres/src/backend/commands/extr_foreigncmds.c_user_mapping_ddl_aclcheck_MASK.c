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
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_NOT_OWNER ; 
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_USAGE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  OBJECT_FOREIGN_SERVER ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(Oid umuserid, Oid serverid, const char *servername)
{
	Oid			curuserid = FUNC0();

	if (!FUNC3(serverid, curuserid))
	{
		if (umuserid == curuserid)
		{
			AclResult	aclresult;

			aclresult = FUNC2(serverid, curuserid, ACL_USAGE);
			if (aclresult != ACLCHECK_OK)
				FUNC1(aclresult, OBJECT_FOREIGN_SERVER, servername);
		}
		else
			FUNC1(ACLCHECK_NOT_OWNER, OBJECT_FOREIGN_SERVER,
						   servername);
	}
}