#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_7__ {int /*<<< orphan*/  newestRedirectXid; } ;
typedef  TYPE_1__ spgxlogVacuumRedirect ;
struct TYPE_8__ {int /*<<< orphan*/  newPage; int /*<<< orphan*/  postfixBlkSame; int /*<<< orphan*/  offnumPostfix; int /*<<< orphan*/  offnumPrefix; } ;
typedef  TYPE_2__ spgxlogSplitTuple ;
struct TYPE_9__ {int /*<<< orphan*/  isRootSplit; int /*<<< orphan*/  innerIsParent; int /*<<< orphan*/  nInsert; int /*<<< orphan*/  nDelete; } ;
typedef  TYPE_3__ spgxlogPickSplit ;
struct TYPE_10__ {int /*<<< orphan*/  nMoves; } ;
typedef  TYPE_4__ spgxlogMoveLeafs ;
struct TYPE_11__ {int /*<<< orphan*/  offnum; } ;
typedef  TYPE_5__ spgxlogAddNode ;
struct TYPE_12__ {int /*<<< orphan*/  storesNulls; int /*<<< orphan*/  newPage; int /*<<< orphan*/  offnumParent; int /*<<< orphan*/  offnumHeadLeaf; int /*<<< orphan*/  offnumLeaf; } ;
typedef  TYPE_6__ spgxlogAddLeaf ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
#define  XLOG_SPGIST_ADD_LEAF 135 
#define  XLOG_SPGIST_ADD_NODE 134 
#define  XLOG_SPGIST_MOVE_LEAFS 133 
#define  XLOG_SPGIST_PICKSPLIT 132 
#define  XLOG_SPGIST_SPLIT_TUPLE 131 
#define  XLOG_SPGIST_VACUUM_LEAF 130 
#define  XLOG_SPGIST_VACUUM_REDIRECT 129 
#define  XLOG_SPGIST_VACUUM_ROOT 128 
 int XLR_INFO_MASK ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void
FUNC4(StringInfo buf, XLogReaderState *record)
{
	char	   *rec = FUNC0(record);
	uint8		info = FUNC1(record) & ~XLR_INFO_MASK;

	switch (info)
	{
		case XLOG_SPGIST_ADD_LEAF:
			{
				spgxlogAddLeaf *xlrec = (spgxlogAddLeaf *) rec;

				FUNC3(buf, "add leaf to page");
				FUNC2(buf, "; off %u; headoff %u; parentoff %u",
								 xlrec->offnumLeaf, xlrec->offnumHeadLeaf,
								 xlrec->offnumParent);
				if (xlrec->newPage)
					FUNC3(buf, " (newpage)");
				if (xlrec->storesNulls)
					FUNC3(buf, " (nulls)");
			}
			break;
		case XLOG_SPGIST_MOVE_LEAFS:
			FUNC2(buf, "%u leafs",
							 ((spgxlogMoveLeafs *) rec)->nMoves);
			break;
		case XLOG_SPGIST_ADD_NODE:
			FUNC2(buf, "off %u",
							 ((spgxlogAddNode *) rec)->offnum);
			break;
		case XLOG_SPGIST_SPLIT_TUPLE:
			FUNC2(buf, "prefix off: %u, postfix off: %u (same %d, new %d)",
							 ((spgxlogSplitTuple *) rec)->offnumPrefix,
							 ((spgxlogSplitTuple *) rec)->offnumPostfix,
							 ((spgxlogSplitTuple *) rec)->postfixBlkSame,
							 ((spgxlogSplitTuple *) rec)->newPage
				);
			break;
		case XLOG_SPGIST_PICKSPLIT:
			{
				spgxlogPickSplit *xlrec = (spgxlogPickSplit *) rec;

				FUNC2(buf, "ndel %u; nins %u",
								 xlrec->nDelete, xlrec->nInsert);
				if (xlrec->innerIsParent)
					FUNC3(buf, " (innerIsParent)");
				if (xlrec->isRootSplit)
					FUNC3(buf, " (isRootSplit)");
			}
			break;
		case XLOG_SPGIST_VACUUM_LEAF:
			/* no further information */
			break;
		case XLOG_SPGIST_VACUUM_ROOT:
			/* no further information */
			break;
		case XLOG_SPGIST_VACUUM_REDIRECT:
			FUNC2(buf, "newest XID %u",
							 ((spgxlogVacuumRedirect *) rec)->newestRedirectXid);
			break;
	}
}