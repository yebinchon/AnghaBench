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
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_FORCE_IMAGE ; 
 int REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_GIN_ID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_GIN_VACUUM_PAGE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(Relation index, Buffer buffer)
{
	Page		page = FUNC1(buffer);
	XLogRecPtr	recptr;

	/* This is only used for entry tree leaf pages. */
	FUNC0(!FUNC2(page));
	FUNC0(FUNC3(page));

	if (!FUNC5(index))
		return;

	/*
	 * Always create a full image, we don't track the changes on the page at
	 * any more fine-grained level. This could obviously be improved...
	 */
	FUNC6();
	FUNC8(0, buffer, REGBUF_FORCE_IMAGE | REGBUF_STANDARD);

	recptr = FUNC7(RM_GIN_ID, XLOG_GIN_VACUUM_PAGE);
	FUNC4(page, recptr);
}