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

/* Variables and functions */
 int /*<<< orphan*/  MultiXactMemberCtl ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_MULTIXACT_ZERO_MEM_PAGE ; 

__attribute__((used)) static int
FUNC2(int pageno, bool writeXlog)
{
	int			slotno;

	slotno = FUNC0(MultiXactMemberCtl, pageno);

	if (writeXlog)
		FUNC1(pageno, XLOG_MULTIXACT_ZERO_MEM_PAGE);

	return slotno;
}