#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_6__ {int origleaf; int markfollowright; int /*<<< orphan*/  npage; int /*<<< orphan*/  orignsn; int /*<<< orphan*/  origrlink; } ;
typedef  TYPE_2__ gistxlogPageSplit ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_5__ {int /*<<< orphan*/  num; } ;
struct TYPE_7__ {int lenlist; scalar_t__ list; TYPE_1__ block; int /*<<< orphan*/  buffer; struct TYPE_7__* next; } ;
typedef  TYPE_3__ SplitedPageLayout ;
typedef  int /*<<< orphan*/  GistNSN ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_GIST_ID ; 
 int /*<<< orphan*/  XLOG_GIST_PAGE_SPLIT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

XLogRecPtr
FUNC6(bool page_is_leaf,
			  SplitedPageLayout *dist,
			  BlockNumber origrlink, GistNSN orignsn,
			  Buffer leftchildbuf, bool markfollowright)
{
	gistxlogPageSplit xlrec;
	SplitedPageLayout *ptr;
	int			npage = 0;
	XLogRecPtr	recptr;
	int			i;

	for (ptr = dist; ptr; ptr = ptr->next)
		npage++;

	xlrec.origrlink = origrlink;
	xlrec.orignsn = orignsn;
	xlrec.origleaf = page_is_leaf;
	xlrec.npage = (uint16) npage;
	xlrec.markfollowright = markfollowright;

	FUNC1();

	/*
	 * Include a full page image of the child buf. (only necessary if a
	 * checkpoint happened since the child page was split)
	 */
	if (FUNC0(leftchildbuf))
		FUNC4(0, leftchildbuf, REGBUF_STANDARD);

	/*
	 * NOTE: We register a lot of data. The caller must've called
	 * XLogEnsureRecordSpace() to prepare for that. We cannot do it here,
	 * because we're already in a critical section. If you change the number
	 * of buffer or data registrations here, make sure you modify the
	 * XLogEnsureRecordSpace() calls accordingly!
	 */
	FUNC5((char *) &xlrec, sizeof(gistxlogPageSplit));

	i = 1;
	for (ptr = dist; ptr; ptr = ptr->next)
	{
		FUNC4(i, ptr->buffer, REGBUF_WILL_INIT);
		FUNC3(i, (char *) &(ptr->block.num), sizeof(int));
		FUNC3(i, (char *) ptr->list, ptr->lenlist);
		i++;
	}

	recptr = FUNC2(RM_GIST_ID, XLOG_GIST_PAGE_SPLIT);

	return recptr;
}