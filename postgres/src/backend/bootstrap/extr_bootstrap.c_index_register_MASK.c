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
struct TYPE_8__ {int /*<<< orphan*/ * ii_ExclusionStrats; int /*<<< orphan*/ * ii_ExclusionProcs; int /*<<< orphan*/ * ii_ExclusionOps; int /*<<< orphan*/ * ii_PredicateState; void* ii_Predicate; int /*<<< orphan*/  ii_ExpressionsState; void* ii_Expressions; } ;
struct TYPE_7__ {struct TYPE_7__* il_next; TYPE_2__* il_info; void* il_ind; void* il_heap; } ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  TYPE_1__ IndexList ;
typedef  TYPE_2__ IndexInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ILHead ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NIL ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * nogc ; 
 scalar_t__ FUNC5 (int) ; 

void
FUNC6(Oid heap,
			   Oid ind,
			   IndexInfo *indexInfo)
{
	IndexList  *newind;
	MemoryContext oldcxt;

	/*
	 * XXX mao 10/31/92 -- don't gc index reldescs, associated info at
	 * bootstrap time.  we'll declare the indexes now, but want to create them
	 * later.
	 */

	if (nogc == NULL)
		nogc = FUNC0(NULL,
									 "BootstrapNoGC",
									 ALLOCSET_DEFAULT_SIZES);

	oldcxt = FUNC2(nogc);

	newind = (IndexList *) FUNC5(sizeof(IndexList));
	newind->il_heap = heap;
	newind->il_ind = ind;
	newind->il_info = (IndexInfo *) FUNC5(sizeof(IndexInfo));

	FUNC4(newind->il_info, indexInfo, sizeof(IndexInfo));
	/* expressions will likely be null, but may as well copy it */
	newind->il_info->ii_Expressions =
		FUNC3(indexInfo->ii_Expressions);
	newind->il_info->ii_ExpressionsState = NIL;
	/* predicate will likely be null, but may as well copy it */
	newind->il_info->ii_Predicate =
		FUNC3(indexInfo->ii_Predicate);
	newind->il_info->ii_PredicateState = NULL;
	/* no exclusion constraints at bootstrap time, so no need to copy */
	FUNC1(indexInfo->ii_ExclusionOps == NULL);
	FUNC1(indexInfo->ii_ExclusionProcs == NULL);
	FUNC1(indexInfo->ii_ExclusionStrats == NULL);

	newind->il_next = ILHead;
	ILHead = newind;

	FUNC2(oldcxt);
}