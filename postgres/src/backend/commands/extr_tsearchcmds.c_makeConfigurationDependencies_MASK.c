#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  cfgparser; int /*<<< orphan*/  cfgowner; int /*<<< orphan*/  cfgnamespace; int /*<<< orphan*/  oid; } ;
struct TYPE_9__ {int /*<<< orphan*/  mapdict; } ;
struct TYPE_8__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  scalar_t__ Relation ;
typedef  int /*<<< orphan*/  ObjectAddresses ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_ts_config_map ;
typedef  TYPE_3__* Form_pg_ts_config ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_ts_config_map_mapcfg ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSConfigMapIndexId ; 
 int /*<<< orphan*/  TSConfigRelationId ; 
 int /*<<< orphan*/  TSDictionaryRelationId ; 
 int /*<<< orphan*/  TSParserRelationId ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC16(HeapTuple tuple, bool removeOld,
							  Relation mapRel)
{
	Form_pg_ts_config cfg = (Form_pg_ts_config) FUNC1(tuple);
	ObjectAddresses *addrs;
	ObjectAddress myself,
				referenced;

	myself.classId = TSConfigRelationId;
	myself.objectId = cfg->oid;
	myself.objectSubId = 0;

	/* for ALTER case, first flush old dependencies, except extension deps */
	if (removeOld)
	{
		FUNC6(myself.classId, myself.objectId, true);
		FUNC7(myself.classId, myself.objectId, 0);
	}

	/*
	 * We use an ObjectAddresses list to remove possible duplicate
	 * dependencies from the config map info.  The pg_ts_config items
	 * shouldn't be duplicates, but might as well fold them all into one call.
	 */
	addrs = FUNC9();

	/* dependency on namespace */
	referenced.classId = NamespaceRelationId;
	referenced.objectId = cfg->cfgnamespace;
	referenced.objectSubId = 0;
	FUNC5(&referenced, addrs);

	/* dependency on owner */
	FUNC11(myself.classId, myself.objectId, cfg->cfgowner);

	/* dependency on extension */
	FUNC10(&myself, removeOld);

	/* dependency on parser */
	referenced.classId = TSParserRelationId;
	referenced.objectId = cfg->cfgparser;
	referenced.objectSubId = 0;
	FUNC5(&referenced, addrs);

	/* dependencies on dictionaries listed in config map */
	if (mapRel)
	{
		ScanKeyData skey;
		SysScanDesc scan;
		HeapTuple	maptup;

		/* CCI to ensure we can see effects of caller's changes */
		FUNC0();

		FUNC4(&skey,
					Anum_pg_ts_config_map_mapcfg,
					BTEqualStrategyNumber, F_OIDEQ,
					FUNC3(myself.objectId));

		scan = FUNC13(mapRel, TSConfigMapIndexId, true,
								  NULL, 1, &skey);

		while (FUNC2((maptup = FUNC15(scan))))
		{
			Form_pg_ts_config_map cfgmap = (Form_pg_ts_config_map) FUNC1(maptup);

			referenced.classId = TSDictionaryRelationId;
			referenced.objectId = cfgmap->mapdict;
			referenced.objectSubId = 0;
			FUNC5(&referenced, addrs);
		}

		FUNC14(scan);
	}

	/* Record 'em (this includes duplicate elimination) */
	FUNC12(&myself, addrs, DEPENDENCY_NORMAL);

	FUNC8(addrs);

	return myself;
}