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
struct TYPE_10__ {int /*<<< orphan*/  heaptuplespresent; int /*<<< orphan*/  readonly; int /*<<< orphan*/  rel; int /*<<< orphan*/  heaprel; int /*<<< orphan*/  filter; int /*<<< orphan*/  heapallindexed; } ;
struct TYPE_9__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_1__* IndexTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_2__ BtreeCheckState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC14(Relation index, ItemPointer tid, Datum *values,
						  bool *isnull, bool tupleIsAlive, void *checkstate)
{
	BtreeCheckState *state = (BtreeCheckState *) checkstate;
	IndexTuple	itup,
				norm;

	FUNC0(state->heapallindexed);

	/* Generate a normalized index tuple for fingerprinting */
	itup = FUNC12(FUNC4(index), values, isnull);
	itup->t_tid = *tid;
	norm = FUNC7(state, itup);

	/* Probe Bloom filter -- tuple should be present */
	if (FUNC6(state->filter, (unsigned char *) norm,
							FUNC1(norm)))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_DATA_CORRUPTED),
				 FUNC11("heap tuple (%u,%u) from table \"%s\" lacks matching index tuple within index \"%s\"",
						FUNC2(&(itup->t_tid)),
						FUNC3(&(itup->t_tid)),
						FUNC5(state->heaprel),
						FUNC5(state->rel)),
				 !state->readonly
				 ? FUNC10("Retrying verification using the function bt_index_parent_check() might provide a more specific error.")
				 : 0));

	state->heaptuplespresent++;
	FUNC13(itup);
	/* Cannot leak memory here */
	if (norm != itup)
		FUNC13(norm);
}