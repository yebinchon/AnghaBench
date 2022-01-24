#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {size_t dumpId; } ;
struct TYPE_20__ {int numParents; int numIndexes; TYPE_1__ dobj; TYPE_7__* indexes; struct TYPE_20__** parents; int /*<<< orphan*/  ispartition; } ;
typedef  TYPE_6__ TableInfo ;
struct TYPE_16__ {scalar_t__ oid; scalar_t__ tableoid; } ;
struct TYPE_23__ {int /*<<< orphan*/  namespace; int /*<<< orphan*/  name; TYPE_2__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_22__ {TYPE_9__ dobj; TYPE_7__* partitionIdx; TYPE_7__* parentIdx; } ;
struct TYPE_17__ {int /*<<< orphan*/  dumpId; int /*<<< orphan*/  name; } ;
struct TYPE_21__ {int /*<<< orphan*/  partattaches; TYPE_5__* indextable; TYPE_3__ dobj; int /*<<< orphan*/  parentidx; } ;
struct TYPE_18__ {int /*<<< orphan*/  dumpId; int /*<<< orphan*/  namespace; } ;
struct TYPE_19__ {TYPE_4__ dobj; } ;
typedef  TYPE_7__ IndxInfo ;
typedef  TYPE_8__ IndexAttachInfo ;
typedef  int /*<<< orphan*/ **** DumpableObject ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*) ; 
 int /*<<< orphan*/  DO_INDEX_ATTACH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ******** FUNC3 (TYPE_7__*,int,int) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ******,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *******) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_9__*) ; 

__attribute__((used)) static void
FUNC10(Archive *fout, TableInfo tblinfo[], int numTables)
{
	int			i,
				j,
				k;
	DumpableObject ***parentIndexArray;

	parentIndexArray = (DumpableObject ***)
		FUNC7(FUNC5() * sizeof(DumpableObject **));

	for (i = 0; i < numTables; i++)
	{
		TableInfo  *parenttbl;
		IndexAttachInfo *attachinfo;

		if (!tblinfo[i].ispartition || tblinfo[i].numParents == 0)
			continue;

		FUNC0(tblinfo[i].numParents == 1);
		parenttbl = tblinfo[i].parents[0];

		/*
		 * We need access to each parent table's index list, but there is no
		 * index to cover them outside of this function.  To avoid having to
		 * sort every parent table's indexes each time we come across each of
		 * its partitions, create an indexed array for each parent the first
		 * time it is required.
		 */
		if (parentIndexArray[parenttbl->dobj.dumpId] == NULL)
			parentIndexArray[parenttbl->dobj.dumpId] =
				FUNC3(parenttbl->indexes,
								parenttbl->numIndexes,
								sizeof(IndxInfo));

		attachinfo = (IndexAttachInfo *)
			FUNC7(tblinfo[i].numIndexes * sizeof(IndexAttachInfo));
		for (j = 0, k = 0; j < tblinfo[i].numIndexes; j++)
		{
			IndxInfo   *index = &(tblinfo[i].indexes[j]);
			IndxInfo   *parentidx;

			if (index->parentidx == 0)
				continue;

			parentidx = FUNC4(index->parentidx,
									   parentIndexArray[parenttbl->dobj.dumpId],
									   parenttbl->numIndexes);
			if (parentidx == NULL)
				continue;

			attachinfo[k].dobj.objType = DO_INDEX_ATTACH;
			attachinfo[k].dobj.catId.tableoid = 0;
			attachinfo[k].dobj.catId.oid = 0;
			FUNC1(&attachinfo[k].dobj);
			attachinfo[k].dobj.name = FUNC8(index->dobj.name);
			attachinfo[k].dobj.namespace = index->indextable->dobj.namespace;
			attachinfo[k].parentIdx = parentidx;
			attachinfo[k].partitionIdx = index;

			/*
			 * We must state the DO_INDEX_ATTACH object's dependencies
			 * explicitly, since it will not match anything in pg_depend.
			 *
			 * Give it dependencies on both the partition index and the parent
			 * index, so that it will not be executed till both of those
			 * exist.  (There's no need to care what order those are created
			 * in.)
			 *
			 * In addition, give it dependencies on the indexes' underlying
			 * tables.  This does nothing of great value so far as serial
			 * restore ordering goes, but it ensures that a parallel restore
			 * will not try to run the ATTACH concurrently with other
			 * operations on those tables.
			 */
			FUNC2(&attachinfo[k].dobj, index->dobj.dumpId);
			FUNC2(&attachinfo[k].dobj, parentidx->dobj.dumpId);
			FUNC2(&attachinfo[k].dobj,
								index->indextable->dobj.dumpId);
			FUNC2(&attachinfo[k].dobj,
								parentidx->indextable->dobj.dumpId);

			/* keep track of the list of partitions in the parent index */
			FUNC9(&parentidx->partattaches, &attachinfo[k].dobj);

			k++;
		}
	}

	for (i = 0; i < numTables; i++)
		if (parentIndexArray[i])
			FUNC6(&parentIndexArray[i]);
	FUNC6(parentIndexArray);
}