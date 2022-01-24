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
struct TYPE_7__ {int partnatts; int /*<<< orphan*/ * partcollation; int /*<<< orphan*/ * partopcintype; int /*<<< orphan*/ * partopfamily; } ;
struct TYPE_6__ {int /*<<< orphan*/  relids; int /*<<< orphan*/ * partexprs; int /*<<< orphan*/  nparts; int /*<<< orphan*/  boundinfo; TYPE_2__* part_scheme; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  PathKey ;
typedef  TYPE_2__* PartitionScheme ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

List *
FUNC9(PlannerInfo *root, RelOptInfo *partrel,
						 ScanDirection scandir, bool *partialkeys)
{
	List	   *retval = NIL;
	PartitionScheme partscheme = partrel->part_scheme;
	int			i;

	FUNC0(partscheme != NULL);
	FUNC0(FUNC6(partrel->boundinfo, partrel->nparts));
	/* For now, we can only cope with baserels */
	FUNC0(FUNC1(partrel));

	for (i = 0; i < partscheme->partnatts; i++)
	{
		PathKey    *cpathkey;
		Expr	   *keyCol = (Expr *) FUNC4(partrel->partexprs[i]);

		/*
		 * Try to make a canonical pathkey for this partkey.
		 *
		 * We're considering a baserel scan, so nullable_relids should be
		 * NULL.  Also, we assume the PartitionDesc lists any NULL partition
		 * last, so we treat the scan like a NULLS LAST index: we have
		 * nulls_first for backwards scan only.
		 */
		cpathkey = FUNC5(root,
											  keyCol,
											  NULL,
											  partscheme->partopfamily[i],
											  partscheme->partopcintype[i],
											  partscheme->partcollation[i],
											  FUNC2(scandir),
											  FUNC2(scandir),
											  0,
											  partrel->relids,
											  false);


		if (cpathkey)
		{
			/*
			 * We found the sort key in an EquivalenceClass, so it's relevant
			 * for this query.  Add it to list, unless it's redundant.
			 */
			if (!FUNC8(cpathkey, retval))
				retval = FUNC3(retval, cpathkey);
		}
		else
		{
			/*
			 * Boolean partition keys might be redundant even if they do not
			 * appear in an EquivalenceClass, because of our special treatment
			 * of boolean equality conditions --- see the comment for
			 * partkey_is_bool_constant_for_query().  If that applies, we can
			 * continue to examine lower-order partition keys.  Otherwise, the
			 * sort key is not an interesting sort order for this query, so we
			 * should stop considering partition columns; any lower-order sort
			 * keys won't be useful either.
			 */
			if (!FUNC7(partrel, i))
			{
				*partialkeys = true;
				return retval;
			}
		}
	}

	*partialkeys = false;
	return retval;
}