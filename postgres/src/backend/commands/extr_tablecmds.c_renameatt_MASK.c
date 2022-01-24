#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  inh; int /*<<< orphan*/  relname; } ;
struct TYPE_4__ {int /*<<< orphan*/  behavior; TYPE_3__* relation; int /*<<< orphan*/  newname; int /*<<< orphan*/  subname; scalar_t__ missing_ok; } ;
typedef  TYPE_1__ RenameStmt ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  InvalidObjectAddress ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RVR_MISSING_OK ; 
 int /*<<< orphan*/  RangeVarCallbackForRenameAttribute ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC6(RenameStmt *stmt)
{
	Oid			relid;
	AttrNumber	attnum;
	ObjectAddress address;

	/* lock level taken here should match renameatt_internal */
	relid = FUNC2(stmt->relation, AccessExclusiveLock,
									 stmt->missing_ok ? RVR_MISSING_OK : 0,
									 RangeVarCallbackForRenameAttribute,
									 NULL);

	if (!FUNC1(relid))
	{
		FUNC3(NOTICE,
				(FUNC4("relation \"%s\" does not exist, skipping",
						stmt->relation->relname)));
		return InvalidObjectAddress;
	}

	attnum =
		FUNC5(relid,
						   stmt->subname,	/* old att name */
						   stmt->newname,	/* new att name */
						   stmt->relation->inh, /* recursive? */
						   false,	/* recursing? */
						   0,	/* expected inhcount */
						   stmt->behavior);

	FUNC0(address, RelationRelationId, relid, attnum);

	return address;
}