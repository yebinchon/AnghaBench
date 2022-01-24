#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dumpId; int ext_member; scalar_t__ allocDeps; scalar_t__ nDeps; int /*<<< orphan*/ * dependencies; int /*<<< orphan*/  dump; int /*<<< orphan*/ * namespace; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ DumpableObject ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_COMPONENT_ALL ; 
 int allocedDumpIds ; 
 int catalogIdMapValid ; 
 TYPE_1__** dumpIdMap ; 
 int lastDumpId ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__**,int) ; 

void
FUNC3(DumpableObject *dobj)
{
	dobj->dumpId = ++lastDumpId;
	dobj->name = NULL;			/* must be set later */
	dobj->namespace = NULL;		/* may be set later */
	dobj->dump = DUMP_COMPONENT_ALL;	/* default assumption */
	dobj->ext_member = false;	/* default assumption */
	dobj->dependencies = NULL;
	dobj->nDeps = 0;
	dobj->allocDeps = 0;

	while (dobj->dumpId >= allocedDumpIds)
	{
		int			newAlloc;

		if (allocedDumpIds <= 0)
		{
			newAlloc = 256;
			dumpIdMap = (DumpableObject **)
				FUNC1(newAlloc * sizeof(DumpableObject *));
		}
		else
		{
			newAlloc = allocedDumpIds * 2;
			dumpIdMap = (DumpableObject **)
				FUNC2(dumpIdMap, newAlloc * sizeof(DumpableObject *));
		}
		FUNC0(dumpIdMap + allocedDumpIds, 0,
			   (newAlloc - allocedDumpIds) * sizeof(DumpableObject *));
		allocedDumpIds = newAlloc;
	}
	dumpIdMap[dobj->dumpId] = dobj;

	/* mark catalogIdMap invalid, but don't rebuild it yet */
	catalogIdMapValid = false;
}