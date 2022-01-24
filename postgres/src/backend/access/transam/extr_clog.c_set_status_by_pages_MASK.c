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
typedef  int /*<<< orphan*/  XidStatus ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int nsubxids, TransactionId *subxids,
					XidStatus status, XLogRecPtr lsn)
{
	int			pageno = FUNC2(subxids[0]);
	int			offset = 0;
	int			i = 0;

	FUNC0(nsubxids > 0);		/* else the pageno fetch above is unsafe */

	while (i < nsubxids)
	{
		int			num_on_page = 0;
		int			nextpageno;

		do
		{
			nextpageno = FUNC2(subxids[i]);
			if (nextpageno != pageno)
				break;
			num_on_page++;
			i++;
		} while (i < nsubxids);

		FUNC1(InvalidTransactionId,
								   num_on_page, subxids + offset,
								   status, lsn, pageno, false);
		offset = i;
		pageno = nextpageno;
	}
}