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
struct TYPE_7__ {scalar_t__ tokentype; scalar_t__ dicts; int /*<<< orphan*/  cfgname; } ;
struct TYPE_6__ {int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_ts_config ;
typedef  TYPE_2__ AlterTSConfigurationStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_TSCONFIGURATION ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  TSConfigMapRelationId ; 
 int /*<<< orphan*/  TSConfigRelationId ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC18(AlterTSConfigurationStmt *stmt)
{
	HeapTuple	tup;
	Oid			cfgId;
	Relation	relMap;
	ObjectAddress address;

	/* Find the configuration */
	tup = FUNC2(stmt->cfgname);
	if (!FUNC4(tup))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_UNDEFINED_OBJECT),
				 FUNC13("text search configuration \"%s\" does not exist",
						FUNC7(stmt->cfgname))));

	cfgId = ((Form_pg_ts_config) FUNC1(tup))->oid;

	/* must be owner */
	if (!FUNC15(cfgId, FUNC3()))
		FUNC10(ACLCHECK_NOT_OWNER, OBJECT_TSCONFIGURATION,
					   FUNC7(stmt->cfgname));

	relMap = FUNC17(TSConfigMapRelationId, RowExclusiveLock);

	/* Add or drop mappings */
	if (stmt->dicts)
		FUNC6(stmt, tup, relMap);
	else if (stmt->tokentype)
		FUNC0(stmt, tup, relMap);

	/* Update dependencies */
	FUNC14(tup, true, relMap);

	FUNC5(TSConfigRelationId, cfgId, 0);

	FUNC8(address, TSConfigRelationId, cfgId);

	FUNC16(relMap, RowExclusiveLock);

	FUNC9(tup);

	return address;
}