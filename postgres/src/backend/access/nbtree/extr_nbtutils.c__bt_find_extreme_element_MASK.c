#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* indexRelation; } ;
struct TYPE_7__ {scalar_t__* rd_opcintype; int /*<<< orphan*/ * rd_opfamily; } ;
struct TYPE_6__ {scalar_t__ sk_subtype; int sk_attno; int /*<<< orphan*/  sk_collation; } ;
typedef  int /*<<< orphan*/  StrategyNumber ;
typedef  TYPE_1__* ScanKey ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__* IndexScanDesc ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Datum
FUNC9(IndexScanDesc scan, ScanKey skey,
						 StrategyNumber strat,
						 Datum *elems, int nelems)
{
	Relation	rel = scan->indexRelation;
	Oid			elemtype,
				cmp_op;
	RegProcedure cmp_proc;
	FmgrInfo	flinfo;
	Datum		result;
	int			i;

	/*
	 * Determine the nominal datatype of the array elements.  We have to
	 * support the convention that sk_subtype == InvalidOid means the opclass
	 * input type; this is a hack to simplify life for ScanKeyInit().
	 */
	elemtype = skey->sk_subtype;
	if (elemtype == InvalidOid)
		elemtype = rel->rd_opcintype[skey->sk_attno - 1];

	/*
	 * Look up the appropriate comparison operator in the opfamily.
	 *
	 * Note: it's possible that this would fail, if the opfamily is
	 * incomplete, but it seems quite unlikely that an opfamily would omit
	 * non-cross-type comparison operators for any datatype that it supports
	 * at all.
	 */
	cmp_op = FUNC8(rel->rd_opfamily[skey->sk_attno - 1],
								 elemtype,
								 elemtype,
								 strat);
	if (!FUNC3(cmp_op))
		FUNC5(ERROR, "missing operator %d(%u,%u) in opfamily %u",
			 strat, elemtype, elemtype,
			 rel->rd_opfamily[skey->sk_attno - 1]);
	cmp_proc = FUNC7(cmp_op);
	if (!FUNC4(cmp_proc))
		FUNC5(ERROR, "missing oprcode for operator %u", cmp_op);

	FUNC6(cmp_proc, &flinfo);

	FUNC0(nelems > 0);
	result = elems[0];
	for (i = 1; i < nelems; i++)
	{
		if (FUNC1(FUNC2(&flinfo,
										   skey->sk_collation,
										   elems[i],
										   result)))
			result = elems[i];
	}

	return result;
}