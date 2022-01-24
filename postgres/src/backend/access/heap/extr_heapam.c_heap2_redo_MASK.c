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
#define  XLOG_HEAP2_CLEAN 135 
#define  XLOG_HEAP2_CLEANUP_INFO 134 
#define  XLOG_HEAP2_FREEZE_PAGE 133 
#define  XLOG_HEAP2_LOCK_UPDATED 132 
#define  XLOG_HEAP2_MULTI_INSERT 131 
#define  XLOG_HEAP2_NEW_CID 130 
#define  XLOG_HEAP2_REWRITE 129 
#define  XLOG_HEAP2_VISIBLE 128 
 int XLOG_HEAP_OPMASK ; 
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

void
FUNC9(XLogReaderState *record)
{
	uint8		info = FUNC0(record) & ~XLR_INFO_MASK;

	switch (info & XLOG_HEAP_OPMASK)
	{
		case XLOG_HEAP2_CLEAN:
			FUNC2(record);
			break;
		case XLOG_HEAP2_FREEZE_PAGE:
			FUNC4(record);
			break;
		case XLOG_HEAP2_CLEANUP_INFO:
			FUNC3(record);
			break;
		case XLOG_HEAP2_VISIBLE:
			FUNC8(record);
			break;
		case XLOG_HEAP2_MULTI_INSERT:
			FUNC7(record);
			break;
		case XLOG_HEAP2_LOCK_UPDATED:
			FUNC5(record);
			break;
		case XLOG_HEAP2_NEW_CID:

			/*
			 * Nothing to do on a real replay, only used during logical
			 * decoding.
			 */
			break;
		case XLOG_HEAP2_REWRITE:
			FUNC6(record);
			break;
		default:
			FUNC1(PANIC, "heap2_redo: unknown op code %u", info);
	}
}