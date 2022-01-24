#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ tdrefcount; } ;
struct TYPE_10__ {scalar_t__ rd_partcheckcxt; scalar_t__ rd_pdcxt; scalar_t__ rd_partkeycxt; TYPE_1__* rd_rsdesc; scalar_t__ rd_rulescxt; scalar_t__ rd_indexcxt; struct TYPE_10__* rd_fdwroutine; struct TYPE_10__* rd_amcache; struct TYPE_10__* rd_indextuple; struct TYPE_10__* rd_options; struct TYPE_10__* rd_pubactions; int /*<<< orphan*/  rd_idattr; int /*<<< orphan*/  rd_pkattr; int /*<<< orphan*/  rd_keyattr; int /*<<< orphan*/  rd_indexattr; int /*<<< orphan*/  rd_indexlist; int /*<<< orphan*/  rd_fkeylist; int /*<<< orphan*/  trigdesc; TYPE_4__* rd_att; struct TYPE_10__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ rscxt; } ;
typedef  TYPE_2__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC11(Relation relation, bool remember_tupdesc)
{
	FUNC0(FUNC5(relation));

	/*
	 * Make sure smgr and lower levels close the relation's files, if they
	 * weren't closed already.  (This was probably done by caller, but let's
	 * just be real sure.)
	 */
	FUNC4(relation);

	/*
	 * Free all the subsidiary data structures of the relcache entry, then the
	 * entry itself.
	 */
	if (relation->rd_rel)
		FUNC10(relation->rd_rel);
	/* can't use DecrTupleDescRefCount here */
	FUNC0(relation->rd_att->tdrefcount > 0);
	if (--relation->rd_att->tdrefcount == 0)
	{
		/*
		 * If we Rebuilt a relcache entry during a transaction then its
		 * possible we did that because the TupDesc changed as the result of
		 * an ALTER TABLE that ran at less than AccessExclusiveLock. It's
		 * possible someone copied that TupDesc, in which case the copy would
		 * point to free'd memory. So if we rebuild an entry we keep the
		 * TupDesc around until end of transaction, to be safe.
		 */
		if (remember_tupdesc)
			FUNC6(relation->rd_att);
		else
			FUNC2(relation->rd_att);
	}
	FUNC1(relation->trigdesc);
	FUNC9(relation->rd_fkeylist);
	FUNC8(relation->rd_indexlist);
	FUNC7(relation->rd_indexattr);
	FUNC7(relation->rd_keyattr);
	FUNC7(relation->rd_pkattr);
	FUNC7(relation->rd_idattr);
	if (relation->rd_pubactions)
		FUNC10(relation->rd_pubactions);
	if (relation->rd_options)
		FUNC10(relation->rd_options);
	if (relation->rd_indextuple)
		FUNC10(relation->rd_indextuple);
	if (relation->rd_amcache)
		FUNC10(relation->rd_amcache);
	if (relation->rd_fdwroutine)
		FUNC10(relation->rd_fdwroutine);
	if (relation->rd_indexcxt)
		FUNC3(relation->rd_indexcxt);
	if (relation->rd_rulescxt)
		FUNC3(relation->rd_rulescxt);
	if (relation->rd_rsdesc)
		FUNC3(relation->rd_rsdesc->rscxt);
	if (relation->rd_partkeycxt)
		FUNC3(relation->rd_partkeycxt);
	if (relation->rd_pdcxt)
		FUNC3(relation->rd_pdcxt);
	if (relation->rd_partcheckcxt)
		FUNC3(relation->rd_partcheckcxt);
	FUNC10(relation);
}