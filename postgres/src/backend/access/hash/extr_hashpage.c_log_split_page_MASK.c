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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_FORCE_IMAGE ; 
 int REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HASH_ID ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_HASH_SPLIT_PAGE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(Relation rel, Buffer buf)
{
	if (FUNC2(rel))
	{
		XLogRecPtr	recptr;

		FUNC3();

		FUNC5(0, buf, REGBUF_FORCE_IMAGE | REGBUF_STANDARD);

		recptr = FUNC4(RM_HASH_ID, XLOG_HASH_SPLIT_PAGE);

		FUNC1(FUNC0(buf), recptr);
	}
}