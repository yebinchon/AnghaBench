#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {int /*<<< orphan*/  relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_REFERENCES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(Relation rel, int16 *attnums, int natts)
{
	Oid			roleid = FUNC0();
	AclResult	aclresult;
	int			i;

	/* Okay if we have relation-level REFERENCES permission */
	aclresult = FUNC6(FUNC2(rel), roleid,
								  ACL_REFERENCES);
	if (aclresult == ACLCHECK_OK)
		return;
	/* Else we must have REFERENCES on each column */
	for (i = 0; i < natts; i++)
	{
		aclresult = FUNC5(FUNC2(rel), attnums[i],
										  roleid, ACL_REFERENCES);
		if (aclresult != ACLCHECK_OK)
			FUNC3(aclresult, FUNC4(rel->rd_rel->relkind),
						   FUNC1(rel));
	}
}