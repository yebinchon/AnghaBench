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
#define  XLOG_BRIN_CREATE_INDEX 133 
#define  XLOG_BRIN_DESUMMARIZE 132 
#define  XLOG_BRIN_INSERT 131 
 int XLOG_BRIN_OPMASK ; 
#define  XLOG_BRIN_REVMAP_EXTEND 130 
#define  XLOG_BRIN_SAMEPAGE_UPDATE 129 
#define  XLOG_BRIN_UPDATE 128 
 int XLR_INFO_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC8(XLogReaderState *record)
{
	uint8		info = FUNC0(record) & ~XLR_INFO_MASK;

	switch (info & XLOG_BRIN_OPMASK)
	{
		case XLOG_BRIN_CREATE_INDEX:
			FUNC1(record);
			break;
		case XLOG_BRIN_INSERT:
			FUNC3(record);
			break;
		case XLOG_BRIN_UPDATE:
			FUNC6(record);
			break;
		case XLOG_BRIN_SAMEPAGE_UPDATE:
			FUNC5(record);
			break;
		case XLOG_BRIN_REVMAP_EXTEND:
			FUNC4(record);
			break;
		case XLOG_BRIN_DESUMMARIZE:
			FUNC2(record);
			break;
		default:
			FUNC7(PANIC, "brin_redo: unknown op code %u", info);
	}
}