#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ attlen; scalar_t__ attalign; int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attisdropped; } ;
struct TYPE_7__ {int natts; } ;
typedef  TYPE_2__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(TupleDesc dst_tupdesc, TupleDesc src_tupdesc)
{
	int			i;

	if (dst_tupdesc->natts != src_tupdesc->natts)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_DATATYPE_MISMATCH),
				 FUNC6("function return row and query-specified return row do not match"),
				 FUNC5("Returned row contains %d attribute, but query expects %d.",
								  "Returned row contains %d attributes, but query expects %d.",
								  src_tupdesc->natts,
								  src_tupdesc->natts, dst_tupdesc->natts)));

	for (i = 0; i < dst_tupdesc->natts; i++)
	{
		Form_pg_attribute dattr = FUNC1(dst_tupdesc, i);
		Form_pg_attribute sattr = FUNC1(src_tupdesc, i);

		if (FUNC0(sattr->atttypid, dattr->atttypid))
			continue;			/* no worries */
		if (!dattr->attisdropped)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_DATATYPE_MISMATCH),
					 FUNC6("function return row and query-specified return row do not match"),
					 FUNC4("Returned type %s at ordinal position %d, but query expects %s.",
							   FUNC7(sattr->atttypid),
							   i + 1,
							   FUNC7(dattr->atttypid))));

		if (dattr->attlen != sattr->attlen ||
			dattr->attalign != sattr->attalign)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_DATATYPE_MISMATCH),
					 FUNC6("function return row and query-specified return row do not match"),
					 FUNC4("Physical storage mismatch on dropped attribute at ordinal position %d.",
							   i + 1)));
	}
}