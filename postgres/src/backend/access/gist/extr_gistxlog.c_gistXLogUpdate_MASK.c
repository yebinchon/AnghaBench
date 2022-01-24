#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ntodelete; int ntoinsert; } ;
typedef  TYPE_1__ gistxlogPageUpdate ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_GIST_ID ; 
 int /*<<< orphan*/  XLOG_GIST_PAGE_UPDATE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

XLogRecPtr
FUNC7(Buffer buffer,
			   OffsetNumber *todelete, int ntodelete,
			   IndexTuple *itup, int ituplen,
			   Buffer leftchildbuf)
{
	gistxlogPageUpdate xlrec;
	int			i;
	XLogRecPtr	recptr;

	xlrec.ntodelete = ntodelete;
	xlrec.ntoinsert = ituplen;

	FUNC2();
	FUNC6((char *) &xlrec, sizeof(gistxlogPageUpdate));

	FUNC5(0, buffer, REGBUF_STANDARD);
	FUNC4(0, (char *) todelete, sizeof(OffsetNumber) * ntodelete);

	/* new tuples */
	for (i = 0; i < ituplen; i++)
		FUNC4(0, (char *) (itup[i]), FUNC1(itup[i]));

	/*
	 * Include a full page image of the child buf. (only necessary if a
	 * checkpoint happened since the child page was split)
	 */
	if (FUNC0(leftchildbuf))
		FUNC5(1, leftchildbuf, REGBUF_STANDARD);

	recptr = FUNC3(RM_GIST_ID, XLOG_GIST_PAGE_UPDATE);

	return recptr;
}