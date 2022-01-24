#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ri_RelationDesc; } ;
typedef  TYPE_1__ ResultRelInfo ;
typedef  int /*<<< orphan*/  LockTupleMode ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INDEX_ATTR_BITMAP_KEY ; 
 int /*<<< orphan*/  LockTupleExclusive ; 
 int /*<<< orphan*/  LockTupleNoKeyExclusive ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

LockTupleMode
FUNC3(EState *estate, ResultRelInfo *relinfo)
{
	Bitmapset  *keyCols;
	Bitmapset  *updatedCols;

	/*
	 * Compute lock mode to use.  If columns that are part of the key have not
	 * been modified, then we can use a weaker lock, allowing for better
	 * concurrency.
	 */
	updatedCols = FUNC0(relinfo, estate);
	keyCols = FUNC1(relinfo->ri_RelationDesc,
										 INDEX_ATTR_BITMAP_KEY);

	if (FUNC2(keyCols, updatedCols))
		return LockTupleExclusive;

	return LockTupleNoKeyExclusive;
}