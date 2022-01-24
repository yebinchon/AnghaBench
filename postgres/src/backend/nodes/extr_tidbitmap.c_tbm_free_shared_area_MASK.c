#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsa_pointer ;
typedef  int /*<<< orphan*/  dsa_area ;
struct TYPE_6__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_5__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  schunks; int /*<<< orphan*/  spages; int /*<<< orphan*/  pagetable; } ;
typedef  TYPE_1__ TBMSharedIteratorState ;
typedef  TYPE_2__ PTIterationArray ;
typedef  TYPE_3__ PTEntryArray ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

void
FUNC4(dsa_area *dsa, dsa_pointer dp)
{
	TBMSharedIteratorState *istate = FUNC2(dsa, dp);
	PTEntryArray *ptbase;
	PTIterationArray *ptpages;
	PTIterationArray *ptchunks;

	if (FUNC0(istate->pagetable))
	{
		ptbase = FUNC2(dsa, istate->pagetable);
		if (FUNC3(&ptbase->refcount, 1) == 0)
			FUNC1(dsa, istate->pagetable);
	}
	if (FUNC0(istate->spages))
	{
		ptpages = FUNC2(dsa, istate->spages);
		if (FUNC3(&ptpages->refcount, 1) == 0)
			FUNC1(dsa, istate->spages);
	}
	if (FUNC0(istate->schunks))
	{
		ptchunks = FUNC2(dsa, istate->schunks);
		if (FUNC3(&ptchunks->refcount, 1) == 0)
			FUNC1(dsa, istate->schunks);
	}

	FUNC1(dsa, dp);
}