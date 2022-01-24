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
#define  XLOG_HASH_ADD_OVFL_PAGE 140 
#define  XLOG_HASH_DELETE 139 
#define  XLOG_HASH_INIT_BITMAP_PAGE 138 
#define  XLOG_HASH_INIT_META_PAGE 137 
#define  XLOG_HASH_INSERT 136 
#define  XLOG_HASH_MOVE_PAGE_CONTENTS 135 
#define  XLOG_HASH_SPLIT_ALLOCATE_PAGE 134 
#define  XLOG_HASH_SPLIT_CLEANUP 133 
#define  XLOG_HASH_SPLIT_COMPLETE 132 
#define  XLOG_HASH_SPLIT_PAGE 131 
#define  XLOG_HASH_SQUEEZE_PAGE 130 
#define  XLOG_HASH_UPDATE_META_PAGE 129 
#define  XLOG_HASH_VACUUM_ONE_PAGE 128 
 int XLR_INFO_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void
FUNC15(XLogReaderState *record)
{
	uint8		info = FUNC0(record) & ~XLR_INFO_MASK;

	switch (info)
	{
		case XLOG_HASH_INIT_META_PAGE:
			FUNC5(record);
			break;
		case XLOG_HASH_INIT_BITMAP_PAGE:
			FUNC4(record);
			break;
		case XLOG_HASH_INSERT:
			FUNC6(record);
			break;
		case XLOG_HASH_ADD_OVFL_PAGE:
			FUNC2(record);
			break;
		case XLOG_HASH_SPLIT_ALLOCATE_PAGE:
			FUNC8(record);
			break;
		case XLOG_HASH_SPLIT_PAGE:
			FUNC11(record);
			break;
		case XLOG_HASH_SPLIT_COMPLETE:
			FUNC10(record);
			break;
		case XLOG_HASH_MOVE_PAGE_CONTENTS:
			FUNC7(record);
			break;
		case XLOG_HASH_SQUEEZE_PAGE:
			FUNC12(record);
			break;
		case XLOG_HASH_DELETE:
			FUNC3(record);
			break;
		case XLOG_HASH_SPLIT_CLEANUP:
			FUNC9(record);
			break;
		case XLOG_HASH_UPDATE_META_PAGE:
			FUNC13(record);
			break;
		case XLOG_HASH_VACUUM_ONE_PAGE:
			FUNC14(record);
			break;
		default:
			FUNC1(PANIC, "hash_redo: unknown op code %u", info);
	}
}