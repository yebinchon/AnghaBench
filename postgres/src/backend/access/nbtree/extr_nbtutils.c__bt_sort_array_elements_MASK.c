#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int reverse; int /*<<< orphan*/  collation; int /*<<< orphan*/  flinfo; } ;
struct TYPE_10__ {TYPE_2__* indexRelation; } ;
struct TYPE_9__ {scalar_t__* rd_opcintype; int /*<<< orphan*/ * rd_opfamily; } ;
struct TYPE_8__ {scalar_t__ sk_subtype; int sk_attno; int /*<<< orphan*/  sk_collation; } ;
typedef  TYPE_1__* ScanKey ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__* IndexScanDesc ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_4__ BTSortArrayContext ;

/* Variables and functions */
 int /*<<< orphan*/  BTORDER_PROC ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _bt_compare_array_elements ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,int,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static int
FUNC6(IndexScanDesc scan, ScanKey skey,
						bool reverse,
						Datum *elems, int nelems)
{
	Relation	rel = scan->indexRelation;
	Oid			elemtype;
	RegProcedure cmp_proc;
	BTSortArrayContext cxt;

	if (nelems <= 1)
		return nelems;			/* no work to do */

	/*
	 * Determine the nominal datatype of the array elements.  We have to
	 * support the convention that sk_subtype == InvalidOid means the opclass
	 * input type; this is a hack to simplify life for ScanKeyInit().
	 */
	elemtype = skey->sk_subtype;
	if (elemtype == InvalidOid)
		elemtype = rel->rd_opcintype[skey->sk_attno - 1];

	/*
	 * Look up the appropriate comparison function in the opfamily.
	 *
	 * Note: it's possible that this would fail, if the opfamily is
	 * incomplete, but it seems quite unlikely that an opfamily would omit
	 * non-cross-type support functions for any datatype that it supports at
	 * all.
	 */
	cmp_proc = FUNC3(rel->rd_opfamily[skey->sk_attno - 1],
								 elemtype,
								 elemtype,
								 BTORDER_PROC);
	if (!FUNC0(cmp_proc))
		FUNC1(ERROR, "missing support function %d(%u,%u) in opfamily %u",
			 BTORDER_PROC, elemtype, elemtype,
			 rel->rd_opfamily[skey->sk_attno - 1]);

	/* Sort the array elements */
	FUNC2(cmp_proc, &cxt.flinfo);
	cxt.collation = skey->sk_collation;
	cxt.reverse = reverse;
	FUNC4((void *) elems, nelems, sizeof(Datum),
			  _bt_compare_array_elements, (void *) &cxt);

	/* Now scan the sorted elements and remove duplicates */
	return FUNC5(elems, nelems, sizeof(Datum),
					   _bt_compare_array_elements, &cxt);
}