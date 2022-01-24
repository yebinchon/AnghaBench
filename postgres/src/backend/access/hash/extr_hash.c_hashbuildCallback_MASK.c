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
struct TYPE_7__ {int indtuples; int /*<<< orphan*/  heapRel; scalar_t__ spool; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_1__* IndexTuple ;
typedef  TYPE_2__ HashBuildState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(Relation index,
				  ItemPointer tid,
				  Datum *values,
				  bool *isnull,
				  bool tupleIsAlive,
				  void *state)
{
	HashBuildState *buildstate = (HashBuildState *) state;
	Datum		index_values[1];
	bool		index_isnull[1];
	IndexTuple	itup;

	/* convert data to a hash key; on failure, do not insert anything */
	if (!FUNC2(index,
							 values, isnull,
							 index_values, index_isnull))
		return;

	/* Either spool the tuple for sorting, or just put it into the index */
	if (buildstate->spool)
		FUNC1(buildstate->spool, tid, index_values, index_isnull);
	else
	{
		/* form an index tuple and point it at the heap tuple */
		itup = FUNC4(FUNC0(index),
								index_values, index_isnull);
		itup->t_tid = *tid;
		FUNC3(index, itup, buildstate->heapRel);
		FUNC5(itup);
	}

	buildstate->indtuples += 1;
}