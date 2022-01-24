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
#define  XLOG_SPGIST_ADD_LEAF 135 
#define  XLOG_SPGIST_ADD_NODE 134 
#define  XLOG_SPGIST_MOVE_LEAFS 133 
#define  XLOG_SPGIST_PICKSPLIT 132 
#define  XLOG_SPGIST_SPLIT_TUPLE 131 
#define  XLOG_SPGIST_VACUUM_LEAF 130 
#define  XLOG_SPGIST_VACUUM_REDIRECT 129 
#define  XLOG_SPGIST_VACUUM_ROOT 128 
 int XLR_INFO_MASK ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  opCtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(XLogReaderState *record)
{
	uint8		info = FUNC2(record) & ~XLR_INFO_MASK;
	MemoryContext oldCxt;

	oldCxt = FUNC1(opCtx);
	switch (info)
	{
		case XLOG_SPGIST_ADD_LEAF:
			FUNC4(record);
			break;
		case XLOG_SPGIST_MOVE_LEAFS:
			FUNC6(record);
			break;
		case XLOG_SPGIST_ADD_NODE:
			FUNC5(record);
			break;
		case XLOG_SPGIST_SPLIT_TUPLE:
			FUNC8(record);
			break;
		case XLOG_SPGIST_PICKSPLIT:
			FUNC7(record);
			break;
		case XLOG_SPGIST_VACUUM_LEAF:
			FUNC9(record);
			break;
		case XLOG_SPGIST_VACUUM_ROOT:
			FUNC11(record);
			break;
		case XLOG_SPGIST_VACUUM_REDIRECT:
			FUNC10(record);
			break;
		default:
			FUNC3(PANIC, "spg_redo: unknown op code %u", info);
	}

	FUNC1(oldCxt);
	FUNC0(opCtx);
}