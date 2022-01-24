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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LargeObjectRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC5(Oid lobjId)
{
	Oid			lobjId_new;

	/*
	 * Create a new largeobject with empty data pages
	 */
	lobjId_new = FUNC3(lobjId);

	/*
	 * dependency on the owner of largeobject
	 *
	 * The reason why we use LargeObjectRelationId instead of
	 * LargeObjectMetadataRelationId here is to provide backward compatibility
	 * to the applications which utilize a knowledge about internal layout of
	 * system catalogs. OID of pg_largeobject_metadata and loid of
	 * pg_largeobject are same value, so there are no actual differences here.
	 */
	FUNC4(LargeObjectRelationId,
							lobjId_new, FUNC1());

	/* Post creation hook for new large object */
	FUNC2(LargeObjectRelationId, lobjId_new, 0);

	/*
	 * Advance command counter to make new tuple visible to later operations.
	 */
	FUNC0();

	return lobjId_new;
}