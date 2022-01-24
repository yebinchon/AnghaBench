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
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
#define  XLOG_GIN_CREATE_PTREE 136 
#define  XLOG_GIN_DELETE_LISTPAGE 135 
#define  XLOG_GIN_DELETE_PAGE 134 
#define  XLOG_GIN_INSERT 133 
#define  XLOG_GIN_INSERT_LISTPAGE 132 
#define  XLOG_GIN_SPLIT 131 
#define  XLOG_GIN_UPDATE_META_PAGE 130 
#define  XLOG_GIN_VACUUM_DATA_LEAF_PAGE 129 
#define  XLOG_GIN_VACUUM_PAGE 128 
 int XLR_INFO_MASK ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opCtx ; 

void
FUNC13(XLogReaderState *record)
{
	uint8		info = FUNC2(record) & ~XLR_INFO_MASK;
	MemoryContext oldCtx;

	/*
	 * GIN indexes do not require any conflict processing. NB: If we ever
	 * implement a similar optimization as we have in b-tree, and remove
	 * killed tuples outside VACUUM, we'll need to handle that here.
	 */

	oldCtx = FUNC1(opCtx);
	switch (info)
	{
		case XLOG_GIN_CREATE_PTREE:
			FUNC4(record);
			break;
		case XLOG_GIN_INSERT:
			FUNC7(record);
			break;
		case XLOG_GIN_SPLIT:
			FUNC9(record);
			break;
		case XLOG_GIN_VACUUM_PAGE:
			FUNC12(record);
			break;
		case XLOG_GIN_VACUUM_DATA_LEAF_PAGE:
			FUNC11(record);
			break;
		case XLOG_GIN_DELETE_PAGE:
			FUNC6(record);
			break;
		case XLOG_GIN_UPDATE_META_PAGE:
			FUNC10(record);
			break;
		case XLOG_GIN_INSERT_LISTPAGE:
			FUNC8(record);
			break;
		case XLOG_GIN_DELETE_LISTPAGE:
			FUNC5(record);
			break;
		default:
			FUNC3(PANIC, "gin_redo: unknown op code %u", info);
	}
	FUNC1(oldCtx);
	FUNC0(opCtx);
}