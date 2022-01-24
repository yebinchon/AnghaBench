#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8 ;
typedef  int /*<<< orphan*/  XLogReaderState ;

/* Variables and functions */
 int /*<<< orphan*/  PANIC ; 
#define  XLOG_BTREE_DELETE 140 
#define  XLOG_BTREE_INSERT_LEAF 139 
#define  XLOG_BTREE_INSERT_META 138 
#define  XLOG_BTREE_INSERT_UPPER 137 
#define  XLOG_BTREE_MARK_PAGE_HALFDEAD 136 
#define  XLOG_BTREE_META_CLEANUP 135 
#define  XLOG_BTREE_NEWROOT 134 
#define  XLOG_BTREE_REUSE_PAGE 133 
#define  XLOG_BTREE_SPLIT_L 132 
#define  XLOG_BTREE_SPLIT_R 131 
#define  XLOG_BTREE_UNLINK_PAGE 130 
#define  XLOG_BTREE_UNLINK_PAGE_META 129 
#define  XLOG_BTREE_VACUUM 128 
 int XLR_INFO_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC11(XLogReaderState *record)
{
	uint8		info = FUNC0(record) & ~XLR_INFO_MASK;

	switch (info)
	{
		case XLOG_BTREE_INSERT_LEAF:
			FUNC3(true, false, record);
			break;
		case XLOG_BTREE_INSERT_UPPER:
			FUNC3(false, false, record);
			break;
		case XLOG_BTREE_INSERT_META:
			FUNC3(false, true, record);
			break;
		case XLOG_BTREE_SPLIT_L:
			FUNC7(true, record);
			break;
		case XLOG_BTREE_SPLIT_R:
			FUNC7(false, record);
			break;
		case XLOG_BTREE_VACUUM:
			FUNC9(record);
			break;
		case XLOG_BTREE_DELETE:
			FUNC2(record);
			break;
		case XLOG_BTREE_MARK_PAGE_HALFDEAD:
			FUNC4(info, record);
			break;
		case XLOG_BTREE_UNLINK_PAGE:
		case XLOG_BTREE_UNLINK_PAGE_META:
			FUNC8(info, record);
			break;
		case XLOG_BTREE_NEWROOT:
			FUNC5(record);
			break;
		case XLOG_BTREE_REUSE_PAGE:
			FUNC6(record);
			break;
		case XLOG_BTREE_META_CLEANUP:
			FUNC1(record, 0);
			break;
		default:
			FUNC10(PANIC, "btree_redo: unknown op code %u", info);
	}
}