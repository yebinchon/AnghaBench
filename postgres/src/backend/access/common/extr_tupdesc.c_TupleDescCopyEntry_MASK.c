#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_11__ {int attnum; int attcacheoff; int attnotnull; int atthasdef; int atthasmissing; char attidentity; char attgenerated; } ;
struct TYPE_10__ {int natts; } ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ATTRIBUTE_FIXED_PART_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC4(TupleDesc dst, AttrNumber dstAttno,
				   TupleDesc src, AttrNumber srcAttno)
{
	Form_pg_attribute dstAtt = FUNC2(dst, dstAttno - 1);
	Form_pg_attribute srcAtt = FUNC2(src, srcAttno - 1);

	/*
	 * sanity checks
	 */
	FUNC0(FUNC1(src));
	FUNC0(FUNC1(dst));
	FUNC0(srcAttno >= 1);
	FUNC0(srcAttno <= src->natts);
	FUNC0(dstAttno >= 1);
	FUNC0(dstAttno <= dst->natts);

	FUNC3(dstAtt, srcAtt, ATTRIBUTE_FIXED_PART_SIZE);

	/*
	 * Aside from updating the attno, we'd better reset attcacheoff.
	 *
	 * XXX Actually, to be entirely safe we'd need to reset the attcacheoff of
	 * all following columns in dst as well.  Current usage scenarios don't
	 * require that though, because all following columns will get initialized
	 * by other uses of this function or TupleDescInitEntry.  So we cheat a
	 * bit to avoid a useless O(N^2) penalty.
	 */
	dstAtt->attnum = dstAttno;
	dstAtt->attcacheoff = -1;

	/* since we're not copying constraints or defaults, clear these */
	dstAtt->attnotnull = false;
	dstAtt->atthasdef = false;
	dstAtt->atthasmissing = false;
	dstAtt->attidentity = '\0';
	dstAtt->attgenerated = '\0';
}