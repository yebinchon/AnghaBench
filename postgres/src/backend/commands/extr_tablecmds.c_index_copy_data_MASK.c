#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* rd_rel; int /*<<< orphan*/  rd_smgr; int /*<<< orphan*/  rd_backend; } ;
struct TYPE_7__ {int /*<<< orphan*/  relpersistence; } ;
typedef  int /*<<< orphan*/  SMgrRelation ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  scalar_t__ ForkNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ INIT_FORKNUM ; 
 scalar_t__ MAIN_FORKNUM ; 
 scalar_t__ MAX_FORKNUM ; 
 int /*<<< orphan*/  RELPERSISTENCE_PERMANENT ; 
 int /*<<< orphan*/  RELPERSISTENCE_UNLOGGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(Relation rel, RelFileNode newrnode)
{
	SMgrRelation dstrel;

	dstrel = FUNC9(newrnode, rel->rd_backend);
	FUNC4(rel);

	/*
	 * Since we copy the file directly without looking at the shared buffers,
	 * we'd better first flush out any pages of the source relation that are
	 * in shared buffers.  We assume no new changes will be made while we are
	 * holding exclusive lock on the rel.
	 */
	FUNC0(rel);

	/*
	 * Create and copy all forks of the relation, and schedule unlinking of
	 * old physical files.
	 *
	 * NOTE: any conflict in relfilenode value will be caught in
	 * RelationCreateStorage().
	 */
	FUNC2(newrnode, rel->rd_rel->relpersistence);

	/* copy main fork */
	FUNC1(rel->rd_smgr, dstrel, MAIN_FORKNUM,
						rel->rd_rel->relpersistence);

	/* copy those extra forks that exist */
	for (ForkNumber forkNum = MAIN_FORKNUM + 1;
		 forkNum <= MAX_FORKNUM; forkNum++)
	{
		if (FUNC8(rel->rd_smgr, forkNum))
		{
			FUNC7(dstrel, forkNum, false);

			/*
			 * WAL log creation if the relation is persistent, or this is the
			 * init fork of an unlogged relation.
			 */
			if (rel->rd_rel->relpersistence == RELPERSISTENCE_PERMANENT ||
				(rel->rd_rel->relpersistence == RELPERSISTENCE_UNLOGGED &&
				 forkNum == INIT_FORKNUM))
				FUNC5(&newrnode, forkNum);
			FUNC1(rel->rd_smgr, dstrel, forkNum,
								rel->rd_rel->relpersistence);
		}
	}

	/* drop old relation, and close new one */
	FUNC3(rel);
	FUNC6(dstrel);
}