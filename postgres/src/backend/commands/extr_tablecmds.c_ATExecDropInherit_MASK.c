#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ relispartition; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC8(Relation rel, RangeVar *parent, LOCKMODE lockmode)
{
	ObjectAddress address;
	Relation	parent_rel;

	if (rel->rd_rel->relispartition)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC5("cannot change inheritance of a partition")));

	/*
	 * AccessShareLock on the parent is probably enough, seeing that DROP
	 * TABLE doesn't lock parent tables at all.  We need some lock since we'll
	 * be inspecting the parent's schema.
	 */
	parent_rel = FUNC7(parent, AccessShareLock);

	/*
	 * We don't bother to check ownership of the parent table --- ownership of
	 * the child is presumed enough rights.
	 */

	/* Off to RemoveInheritance() where most of the work happens */
	FUNC2(rel, parent_rel);

	FUNC0(address, RelationRelationId,
					 FUNC1(parent_rel));

	/* keep our lock on the parent relation until commit */
	FUNC6(parent_rel, NoLock);

	return address;
}