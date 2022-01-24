#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  skey ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_12__ {scalar_t__ reltablespace; scalar_t__ relfilenode; scalar_t__ oid; } ;
struct TYPE_11__ {scalar_t__ relid; } ;
struct TYPE_10__ {scalar_t__ relfilenode; scalar_t__ reltablespace; } ;
struct TYPE_9__ {void* sk_argument; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  TYPE_1__ ScanKeyData ;
typedef  TYPE_2__ RelfilenodeMapKey ;
typedef  TYPE_3__ RelfilenodeMapEntry ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_4__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ClassTblspcRelfilenodeIndexId ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ GLOBALTABLESPACE_OID ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  HASH_FIND ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ MyDatabaseTableSpace ; 
 void* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/ * RelfilenodeMapHash ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  relfilenode_skey ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC15(Oid reltablespace, Oid relfilenode)
{
	RelfilenodeMapKey key;
	RelfilenodeMapEntry *entry;
	bool		found;
	SysScanDesc scandesc;
	Relation	relation;
	HeapTuple	ntp;
	ScanKeyData skey[2];
	Oid			relid;

	if (RelfilenodeMapHash == NULL)
		FUNC3();

	/* pg_class will show 0 when the value is actually MyDatabaseTableSpace */
	if (reltablespace == MyDatabaseTableSpace)
		reltablespace = 0;

	FUNC4(&key, 0, sizeof(key));
	key.reltablespace = reltablespace;
	key.relfilenode = relfilenode;

	/*
	 * Check cache and return entry if one is found. Even if no target
	 * relation can be found later on we store the negative match and return a
	 * InvalidOid from cache. That's not really necessary for performance
	 * since querying invalid values isn't supposed to be a frequent thing,
	 * but it's basically free.
	 */
	entry = FUNC8(RelfilenodeMapHash, (void *) &key, HASH_FIND, &found);

	if (found)
		return entry->relid;

	/* ok, no previous cache entry, do it the hard way */

	/* initialize empty/negative cache entry before doing the actual lookups */
	relid = InvalidOid;

	if (reltablespace == GLOBALTABLESPACE_OID)
	{
		/*
		 * Ok, shared table, check relmapper.
		 */
		relid = FUNC6(relfilenode, true);
	}
	else
	{
		/*
		 * Not a shared table, could either be a plain relation or a
		 * non-shared, nailed one, like e.g. pg_class.
		 */

		/* check for plain relations by looking in pg_class */
		relation = FUNC14(RelationRelationId, AccessShareLock);

		/* copy scankey to local copy, it will be modified during the scan */
		FUNC9(skey, relfilenode_skey, sizeof(skey));

		/* set scan arguments */
		skey[0].sk_argument = FUNC5(reltablespace);
		skey[1].sk_argument = FUNC5(relfilenode);

		scandesc = FUNC10(relation,
									  ClassTblspcRelfilenodeIndexId,
									  true,
									  NULL,
									  2,
									  skey);

		found = false;

		while (FUNC2(ntp = FUNC12(scandesc)))
		{
			Form_pg_class classform = (Form_pg_class) FUNC1(ntp);

			if (found)
				FUNC7(ERROR,
					 "unexpected duplicate for tablespace %u, relfilenode %u",
					 reltablespace, relfilenode);
			found = true;

			FUNC0(classform->reltablespace == reltablespace);
			FUNC0(classform->relfilenode == relfilenode);
			relid = classform->oid;
		}

		FUNC11(scandesc);
		FUNC13(relation, AccessShareLock);

		/* check for tables that are mapped but not shared */
		if (!found)
			relid = FUNC6(relfilenode, false);
	}

	/*
	 * Only enter entry into cache now, our opening of pg_class could have
	 * caused cache invalidations to be executed which would have deleted a
	 * new entry if we had entered it above.
	 */
	entry = FUNC8(RelfilenodeMapHash, (void *) &key, HASH_ENTER, &found);
	if (found)
		FUNC7(ERROR, "corrupted hashtable");
	entry->relid = relid;

	return relid;
}