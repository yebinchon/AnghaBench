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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void
FUNC2(Oid classId, Oid objectId, int32 objsubId,
						 Oid ownerId, Acl *acl)
{
	int			nmembers;
	Oid		   *members;

	/* Nothing to do if ACL is defaulted */
	if (acl == NULL)
		return;

	/* Extract roles mentioned in ACL */
	nmembers = FUNC0(acl, &members);

	/* Update the shared dependency ACL info */
	FUNC1(classId, objectId, objsubId,
						  ownerId,
						  0, NULL,
						  nmembers, members);
}