#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int uint16 ;
struct TYPE_4__ {int hasho_bucket; int /*<<< orphan*/  hasho_page_id; int /*<<< orphan*/  hasho_flag; void* hasho_nextblkno; void* hasho_prevblkno; } ;
struct TYPE_3__ {int pd_lower; } ;
typedef  TYPE_1__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  TYPE_2__* HashPageOpaque ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASHO_PAGE_ID ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 void* InvalidBlockNumber ; 
 int /*<<< orphan*/  LH_BITMAP_PAGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC6(Buffer buf, uint16 bmsize, bool initpage)
{
	Page		pg;
	HashPageOpaque op;
	uint32	   *freep;

	pg = FUNC0(buf);

	/* initialize the page */
	if (initpage)
		FUNC5(pg, FUNC1(buf));

	/* initialize the page's special space */
	op = (HashPageOpaque) FUNC4(pg);
	op->hasho_prevblkno = InvalidBlockNumber;
	op->hasho_nextblkno = InvalidBlockNumber;
	op->hasho_bucket = -1;
	op->hasho_flag = LH_BITMAP_PAGE;
	op->hasho_page_id = HASHO_PAGE_ID;

	/* set all of the bits to 1 */
	freep = FUNC2(pg);
	FUNC3(freep, 0xFF, bmsize);

	/*
	 * Set pd_lower just past the end of the bitmap page data.  We could even
	 * set pd_lower equal to pd_upper, but this is more precise and makes the
	 * page look compressible to xlog.c.
	 */
	((PageHeader) pg)->pd_lower = ((char *) freep + bmsize) - (char *) pg;
}