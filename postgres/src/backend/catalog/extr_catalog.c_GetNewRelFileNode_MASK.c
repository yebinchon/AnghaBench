#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ spcNode; void* relNode; void* dbNode; } ;
struct TYPE_5__ {TYPE_1__ node; int /*<<< orphan*/  backend; } ;
typedef  scalar_t__ Relation ;
typedef  TYPE_2__ RelFileNodeBackend ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  BackendId ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_class_oid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ClassOidIndexId ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ GLOBALTABLESPACE_OID ; 
 void* FUNC3 () ; 
 void* FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBackendId ; 
 void* InvalidOid ; 
 int /*<<< orphan*/  IsBinaryUpgrade ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 void* MyDatabaseId ; 
 void* MyDatabaseTableSpace ; 
#define  RELPERSISTENCE_PERMANENT 130 
#define  RELPERSISTENCE_TEMP 129 
#define  RELPERSISTENCE_UNLOGGED 128 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (TYPE_2__,int /*<<< orphan*/ ) ; 

Oid
FUNC9(Oid reltablespace, Relation pg_class, char relpersistence)
{
	RelFileNodeBackend rnode;
	char	   *rpath;
	bool		collides;
	BackendId	backend;

	/*
	 * If we ever get here during pg_upgrade, there's something wrong; all
	 * relfilenode assignments during a binary-upgrade run should be
	 * determined by commands in the dump script.
	 */
	FUNC0(!IsBinaryUpgrade);

	switch (relpersistence)
	{
		case RELPERSISTENCE_TEMP:
			backend = FUNC1();
			break;
		case RELPERSISTENCE_UNLOGGED:
		case RELPERSISTENCE_PERMANENT:
			backend = InvalidBackendId;
			break;
		default:
			FUNC6(ERROR, "invalid relpersistence: %c", relpersistence);
			return InvalidOid;	/* placate compiler */
	}

	/* This logic should match RelationInitPhysicalAddr */
	rnode.node.spcNode = reltablespace ? reltablespace : MyDatabaseTableSpace;
	rnode.node.dbNode = (rnode.node.spcNode == GLOBALTABLESPACE_OID) ? InvalidOid : MyDatabaseId;

	/*
	 * The relpath will vary based on the backend ID, so we must initialize
	 * that properly here to make sure that any collisions based on filename
	 * are properly detected.
	 */
	rnode.backend = backend;

	do
	{
		FUNC2();

		/* Generate the OID */
		if (pg_class)
			rnode.node.relNode = FUNC4(pg_class, ClassOidIndexId,
													Anum_pg_class_oid);
		else
			rnode.node.relNode = FUNC3();

		/* Check for existing file of same name */
		rpath = FUNC8(rnode, MAIN_FORKNUM);

		if (FUNC5(rpath, F_OK) == 0)
		{
			/* definite collision */
			collides = true;
		}
		else
		{
			/*
			 * Here we have a little bit of a dilemma: if errno is something
			 * other than ENOENT, should we declare a collision and loop? In
			 * practice it seems best to go ahead regardless of the errno.  If
			 * there is a colliding file we will get an smgr failure when we
			 * attempt to create the new relation file.
			 */
			collides = false;
		}

		FUNC7(rpath);
	} while (collides);

	return rnode.node.relNode;
}