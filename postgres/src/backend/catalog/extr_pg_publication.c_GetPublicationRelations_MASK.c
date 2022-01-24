#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  prrelid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_publication_rel ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_publication_rel_prpubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PublicationRelPrrelidPrpubidIndexId ; 
 int /*<<< orphan*/  PublicationRelRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

List *
FUNC10(Oid pubid)
{
	List	   *result;
	Relation	pubrelsrel;
	ScanKeyData scankey;
	SysScanDesc scan;
	HeapTuple	tup;

	/* Find all publications associated with the relation. */
	pubrelsrel = FUNC9(PublicationRelRelationId, AccessShareLock);

	FUNC3(&scankey,
				Anum_pg_publication_rel_prpubid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(pubid));

	scan = FUNC5(pubrelsrel, PublicationRelPrrelidPrpubidIndexId,
							  true, NULL, 1, &scankey);

	result = NIL;
	while (FUNC1(tup = FUNC7(scan)))
	{
		Form_pg_publication_rel pubrel;

		pubrel = (Form_pg_publication_rel) FUNC0(tup);

		result = FUNC4(result, pubrel->prrelid);
	}

	FUNC6(scan);
	FUNC8(pubrelsrel, AccessShareLock);

	return result;
}