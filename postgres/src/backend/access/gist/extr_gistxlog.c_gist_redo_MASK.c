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
#define  XLOG_GIST_DELETE 132 
#define  XLOG_GIST_PAGE_DELETE 131 
#define  XLOG_GIST_PAGE_REUSE 130 
#define  XLOG_GIST_PAGE_SPLIT 129 
#define  XLOG_GIST_PAGE_UPDATE 128 
 int XLR_INFO_MASK ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opCtx ; 

void
FUNC9(XLogReaderState *record)
{
	uint8		info = FUNC2(record) & ~XLR_INFO_MASK;
	MemoryContext oldCxt;

	/*
	 * GiST indexes do not require any conflict processing. NB: If we ever
	 * implement a similar optimization we have in b-tree, and remove killed
	 * tuples outside VACUUM, we'll need to handle that here.
	 */

	oldCxt = FUNC1(opCtx);
	switch (info)
	{
		case XLOG_GIST_PAGE_UPDATE:
			FUNC8(record);
			break;
		case XLOG_GIST_DELETE:
			FUNC4(record);
			break;
		case XLOG_GIST_PAGE_REUSE:
			FUNC6(record);
			break;
		case XLOG_GIST_PAGE_SPLIT:
			FUNC7(record);
			break;
		case XLOG_GIST_PAGE_DELETE:
			FUNC5(record);
			break;
		default:
			FUNC3(PANIC, "gist_redo: unknown op code %u", info);
	}

	FUNC1(oldCxt);
	FUNC0(opCtx);
}