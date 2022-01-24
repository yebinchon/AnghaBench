#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  tableoid; int /*<<< orphan*/  oid; } ;
struct TYPE_9__ {int /*<<< orphan*/  tableoid; int /*<<< orphan*/  oid; } ;
struct TYPE_10__ {TYPE_1__ catId; } ;
typedef  TYPE_2__ DumpableObject ;
typedef  TYPE_3__ CatalogId ;

/* Variables and functions */
 int /*<<< orphan*/  DOCatalogIdCompare ; 
 TYPE_2__** catalogIdMap ; 
 int catalogIdMapValid ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__***,int*) ; 
 int numCatalogIds ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,int /*<<< orphan*/ ) ; 

DumpableObject *
FUNC4(CatalogId catalogId)
{
	DumpableObject **low;
	DumpableObject **high;

	if (!catalogIdMapValid)
	{
		if (catalogIdMap)
			FUNC0(catalogIdMap);
		FUNC1(&catalogIdMap, &numCatalogIds);
		if (numCatalogIds > 1)
			FUNC3((void *) catalogIdMap, numCatalogIds,
				  sizeof(DumpableObject *), DOCatalogIdCompare);
		catalogIdMapValid = true;
	}

	/*
	 * We could use bsearch() here, but the notational cruft of calling
	 * bsearch is nearly as bad as doing it ourselves; and the generalized
	 * bsearch function is noticeably slower as well.
	 */
	if (numCatalogIds <= 0)
		return NULL;
	low = catalogIdMap;
	high = catalogIdMap + (numCatalogIds - 1);
	while (low <= high)
	{
		DumpableObject **middle;
		int			difference;

		middle = low + (high - low) / 2;
		/* comparison must match DOCatalogIdCompare, below */
		difference = FUNC2((*middle)->catId.oid, catalogId.oid);
		if (difference == 0)
			difference = FUNC2((*middle)->catId.tableoid, catalogId.tableoid);
		if (difference == 0)
			return *middle;
		else if (difference < 0)
			low = middle + 1;
		else
			high = middle - 1;
	}
	return NULL;
}