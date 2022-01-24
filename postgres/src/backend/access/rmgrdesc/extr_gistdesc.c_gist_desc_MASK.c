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
typedef  int /*<<< orphan*/  gistxlogPageUpdate ;
typedef  int /*<<< orphan*/  gistxlogPageSplit ;
typedef  int /*<<< orphan*/  gistxlogPageReuse ;
typedef  int /*<<< orphan*/  gistxlogPageDelete ;
typedef  int /*<<< orphan*/  gistxlogDelete ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
#define  XLOG_GIST_DELETE 132 
#define  XLOG_GIST_PAGE_DELETE 131 
#define  XLOG_GIST_PAGE_REUSE 130 
#define  XLOG_GIST_PAGE_SPLIT 129 
#define  XLOG_GIST_PAGE_UPDATE 128 
 int XLR_INFO_MASK ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC7(StringInfo buf, XLogReaderState *record)
{
	char	   *rec = FUNC0(record);
	uint8		info = FUNC1(record) & ~XLR_INFO_MASK;

	switch (info)
	{
		case XLOG_GIST_PAGE_UPDATE:
			FUNC6(buf, (gistxlogPageUpdate *) rec);
			break;
		case XLOG_GIST_PAGE_REUSE:
			FUNC4(buf, (gistxlogPageReuse *) rec);
			break;
		case XLOG_GIST_DELETE:
			FUNC2(buf, (gistxlogDelete *) rec);
			break;
		case XLOG_GIST_PAGE_SPLIT:
			FUNC5(buf, (gistxlogPageSplit *) rec);
			break;
		case XLOG_GIST_PAGE_DELETE:
			FUNC3(buf, (gistxlogPageDelete *) rec);
			break;
	}
}