#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16 ;
struct TYPE_16__ {int /*<<< orphan*/  bd_context; int /*<<< orphan*/  bd_tupdesc; TYPE_2__* bd_index; TYPE_1__** bd_info; } ;
struct TYPE_15__ {scalar_t__ fn_oid; } ;
struct TYPE_14__ {scalar_t__ atttypid; } ;
struct TYPE_13__ {scalar_t__ cached_subtype; TYPE_5__* strategy_procinfos; } ;
struct TYPE_12__ {scalar_t__* rd_opfamily; } ;
struct TYPE_11__ {scalar_t__ oi_opaque; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__ MinmaxOpaque ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  TYPE_5__ FmgrInfo ;
typedef  TYPE_6__ BrinDesc ;

/* Variables and functions */
 int /*<<< orphan*/  AMOPSTRATEGY ; 
 int /*<<< orphan*/  Anum_pg_amop_amopopr ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BTMaxStrategyNumber ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static FmgrInfo *
FUNC13(BrinDesc *bdesc, uint16 attno, Oid subtype,
							 uint16 strategynum)
{
	MinmaxOpaque *opaque;

	FUNC0(strategynum >= 1 &&
		   strategynum <= BTMaxStrategyNumber);

	opaque = (MinmaxOpaque *) bdesc->bd_info[attno - 1]->oi_opaque;

	/*
	 * We cache the procedures for the previous subtype in the opaque struct,
	 * to avoid repetitive syscache lookups.  If the subtype changed,
	 * invalidate all the cached entries.
	 */
	if (opaque->cached_subtype != subtype)
	{
		uint16		i;

		for (i = 1; i <= BTMaxStrategyNumber; i++)
			opaque->strategy_procinfos[i - 1].fn_oid = InvalidOid;
		opaque->cached_subtype = subtype;
	}

	if (opaque->strategy_procinfos[strategynum - 1].fn_oid == InvalidOid)
	{
		Form_pg_attribute attr;
		HeapTuple	tuple;
		Oid			opfamily,
					oprid;
		bool		isNull;

		opfamily = bdesc->bd_index->rd_opfamily[attno - 1];
		attr = FUNC9(bdesc->bd_tupdesc, attno - 1);
		tuple = FUNC7(AMOPSTRATEGY, FUNC4(opfamily),
								FUNC4(attr->atttypid),
								FUNC4(subtype),
								FUNC3(strategynum));

		if (!FUNC2(tuple))
			FUNC10(ERROR, "missing operator %d(%u,%u) in opfamily %u",
				 strategynum, attr->atttypid, subtype, opfamily);

		oprid = FUNC1(FUNC8(AMOPSTRATEGY, tuple,
												 Anum_pg_amop_amopopr, &isNull));
		FUNC6(tuple);
		FUNC0(!isNull && FUNC5(oprid));

		FUNC11(FUNC12(oprid),
					  &opaque->strategy_procinfos[strategynum - 1],
					  bdesc->bd_context);
	}

	return &opaque->strategy_procinfos[strategynum - 1];
}