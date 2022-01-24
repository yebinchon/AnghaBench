#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nDeps; int allocDeps; int /*<<< orphan*/ * dependencies; } ;
typedef  TYPE_1__ DumpableObject ;
typedef  int /*<<< orphan*/  DumpId ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

void
FUNC2(DumpableObject *dobj, DumpId refId)
{
	if (dobj->nDeps >= dobj->allocDeps)
	{
		if (dobj->allocDeps <= 0)
		{
			dobj->allocDeps = 16;
			dobj->dependencies = (DumpId *)
				FUNC0(dobj->allocDeps * sizeof(DumpId));
		}
		else
		{
			dobj->allocDeps *= 2;
			dobj->dependencies = (DumpId *)
				FUNC1(dobj->dependencies,
						   dobj->allocDeps * sizeof(DumpId));
		}
	}
	dobj->dependencies[dobj->nDeps++] = refId;
}