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
typedef  int /*<<< orphan*/  nulls ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_inherits_inhparent ; 
 int Anum_pg_inherits_inhrelid ; 
 int Anum_pg_inherits_inhseqno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InheritsRelationId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int Natts_pg_inherits ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(Oid relationId, Oid parentOid, int32 seqNumber)
{
	Datum		values[Natts_pg_inherits];
	bool		nulls[Natts_pg_inherits];
	HeapTuple	tuple;
	Relation	inhRelation;

	inhRelation = FUNC8(InheritsRelationId, RowExclusiveLock);

	/*
	 * Make the pg_inherits entry
	 */
	values[Anum_pg_inherits_inhrelid - 1] = FUNC2(relationId);
	values[Anum_pg_inherits_inhparent - 1] = FUNC2(parentOid);
	values[Anum_pg_inherits_inhseqno - 1] = FUNC1(seqNumber);

	FUNC6(nulls, 0, sizeof(nulls));

	tuple = FUNC4(FUNC3(inhRelation), values, nulls);

	FUNC0(inhRelation, tuple);

	FUNC5(tuple);

	FUNC7(inhRelation, RowExclusiveLock);
}