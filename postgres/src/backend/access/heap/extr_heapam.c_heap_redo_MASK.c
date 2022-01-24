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
#define  XLOG_HEAP_CONFIRM 135 
#define  XLOG_HEAP_DELETE 134 
#define  XLOG_HEAP_HOT_UPDATE 133 
#define  XLOG_HEAP_INPLACE 132 
#define  XLOG_HEAP_INSERT 131 
#define  XLOG_HEAP_LOCK 130 
 int XLOG_HEAP_OPMASK ; 
#define  XLOG_HEAP_TRUNCATE 129 
#define  XLOG_HEAP_UPDATE 128 
 int XLR_INFO_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

void
FUNC8(XLogReaderState *record)
{
	uint8		info = FUNC0(record) & ~XLR_INFO_MASK;

	/*
	 * These operations don't overwrite MVCC data so no conflict processing is
	 * required. The ones in heap2 rmgr do.
	 */

	switch (info & XLOG_HEAP_OPMASK)
	{
		case XLOG_HEAP_INSERT:
			FUNC5(record);
			break;
		case XLOG_HEAP_DELETE:
			FUNC3(record);
			break;
		case XLOG_HEAP_UPDATE:
			FUNC7(record, false);
			break;
		case XLOG_HEAP_TRUNCATE:

			/*
			 * TRUNCATE is a no-op because the actions are already logged as
			 * SMGR WAL records.  TRUNCATE WAL record only exists for logical
			 * decoding.
			 */
			break;
		case XLOG_HEAP_HOT_UPDATE:
			FUNC7(record, true);
			break;
		case XLOG_HEAP_CONFIRM:
			FUNC2(record);
			break;
		case XLOG_HEAP_LOCK:
			FUNC6(record);
			break;
		case XLOG_HEAP_INPLACE:
			FUNC4(record);
			break;
		default:
			FUNC1(PANIC, "heap_redo: unknown op code %u", info);
	}
}