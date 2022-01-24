#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* name; int /*<<< orphan*/  dumpId; scalar_t__ dump; int /*<<< orphan*/  namespace; } ;
struct TYPE_11__ {scalar_t__ relkind; int numParents; int numatts; int* notnull; int* inhNotNull; TYPE_4__** attrdefs; TYPE_2__ dobj; int /*<<< orphan*/ * attnames; scalar_t__* attisdropped; struct TYPE_11__** parents; } ;
typedef  TYPE_3__ TableInfo ;
struct TYPE_9__ {scalar_t__ oid; scalar_t__ tableoid; } ;
struct TYPE_13__ {scalar_t__ dump; int /*<<< orphan*/  namespace; void* name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_12__ {int adnum; int separate; TYPE_7__ dobj; void* adef_expr; TYPE_3__* adtable; } ;
typedef  int /*<<< orphan*/  DumpOptions ;
typedef  TYPE_4__ AttrDefInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  DO_ATTRDEF ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_SEQUENCE ; 
 scalar_t__ RELKIND_VIEW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(DumpOptions *dopt, TableInfo *tblinfo, int numTables)
{
	int			i,
				j,
				k;

	for (i = 0; i < numTables; i++)
	{
		TableInfo  *tbinfo = &(tblinfo[i]);
		int			numParents;
		TableInfo **parents;

		/* Some kinds never have parents */
		if (tbinfo->relkind == RELKIND_SEQUENCE ||
			tbinfo->relkind == RELKIND_VIEW ||
			tbinfo->relkind == RELKIND_MATVIEW)
			continue;

		/* Don't bother computing anything for non-target tables, either */
		if (!tbinfo->dobj.dump)
			continue;

		numParents = tbinfo->numParents;
		parents = tbinfo->parents;

		if (numParents == 0)
			continue;			/* nothing to see here, move along */

		/* For each column, search for matching column names in parent(s) */
		for (j = 0; j < tbinfo->numatts; j++)
		{
			bool		foundNotNull;	/* Attr was NOT NULL in a parent */
			bool		foundDefault;	/* Found a default in a parent */

			/* no point in examining dropped columns */
			if (tbinfo->attisdropped[j])
				continue;

			foundNotNull = false;
			foundDefault = false;
			for (k = 0; k < numParents; k++)
			{
				TableInfo  *parent = parents[k];
				int			inhAttrInd;

				inhAttrInd = FUNC5(tbinfo->attnames[j],
										parent->attnames,
										parent->numatts);
				if (inhAttrInd >= 0)
				{
					foundNotNull |= parent->notnull[inhAttrInd];
					foundDefault |= (parent->attrdefs[inhAttrInd] != NULL);
				}
			}

			/* Remember if we found inherited NOT NULL */
			tbinfo->inhNotNull[j] = foundNotNull;

			/* Manufacture a DEFAULT NULL clause if necessary */
			if (foundDefault && tbinfo->attrdefs[j] == NULL)
			{
				AttrDefInfo *attrDef;

				attrDef = (AttrDefInfo *) FUNC2(sizeof(AttrDefInfo));
				attrDef->dobj.objType = DO_ATTRDEF;
				attrDef->dobj.catId.tableoid = 0;
				attrDef->dobj.catId.oid = 0;
				FUNC0(&attrDef->dobj);
				attrDef->dobj.name = FUNC3(tbinfo->dobj.name);
				attrDef->dobj.namespace = tbinfo->dobj.namespace;
				attrDef->dobj.dump = tbinfo->dobj.dump;

				attrDef->adtable = tbinfo;
				attrDef->adnum = j + 1;
				attrDef->adef_expr = FUNC3("NULL");

				/* Will column be dumped explicitly? */
				if (FUNC4(dopt, tbinfo, j))
				{
					attrDef->separate = false;
					/* No dependency needed: NULL cannot have dependencies */
				}
				else
				{
					/* column will be suppressed, print default separately */
					attrDef->separate = true;
					/* ensure it comes out after the table */
					FUNC1(&attrDef->dobj,
										tbinfo->dobj.dumpId);
				}

				tbinfo->attrdefs[j] = attrDef;
			}
		}
	}
}