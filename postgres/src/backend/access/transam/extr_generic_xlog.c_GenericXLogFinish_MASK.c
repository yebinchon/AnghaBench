#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_9__ {TYPE_2__* pages; scalar_t__ isLogged; } ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  buffer; scalar_t__ image; int /*<<< orphan*/  deltaLen; int /*<<< orphan*/  delta; } ;
struct TYPE_7__ {scalar_t__ pd_upper; scalar_t__ pd_lower; } ;
typedef  TYPE_1__* PageHeader ;
typedef  TYPE_2__ PageData ;
typedef  scalar_t__ Page ;
typedef  TYPE_3__ GenericXLogState ;

/* Variables and functions */
 scalar_t__ BLCKSZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int GENERIC_XLOG_FULL_IMAGE ; 
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 int MAX_GENERIC_XLOG_PAGES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int REGBUF_FORCE_IMAGE ; 
 int REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_GENERIC_ID ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 

XLogRecPtr
FUNC14(GenericXLogState *state)
{
	XLogRecPtr	lsn;
	int			i;

	if (state->isLogged)
	{
		/* Logged relation: make xlog record in critical section. */
		FUNC6();

		FUNC5();

		for (i = 0; i < MAX_GENERIC_XLOG_PAGES; i++)
		{
			PageData   *pageData = &state->pages[i];
			Page		page;
			PageHeader	pageHeader;

			if (FUNC1(pageData->buffer))
				continue;

			page = FUNC0(pageData->buffer);
			pageHeader = (PageHeader) pageData->image;

			if (pageData->flags & GENERIC_XLOG_FULL_IMAGE)
			{
				/*
				 * A full-page image does not require us to supply any xlog
				 * data.  Just apply the image, being careful to zero the
				 * "hole" between pd_lower and pd_upper in order to avoid
				 * divergence between actual page state and what replay would
				 * produce.
				 */
				FUNC11(page, pageData->image, pageHeader->pd_lower);
				FUNC12(page + pageHeader->pd_lower, 0,
					   pageHeader->pd_upper - pageHeader->pd_lower);
				FUNC11(page + pageHeader->pd_upper,
					   pageData->image + pageHeader->pd_upper,
					   BLCKSZ - pageHeader->pd_upper);

				FUNC9(i, pageData->buffer,
								   REGBUF_FORCE_IMAGE | REGBUF_STANDARD);
			}
			else
			{
				/*
				 * In normal mode, calculate delta and write it as xlog data
				 * associated with this page.
				 */
				FUNC10(pageData, page, (Page) pageData->image);

				/* Apply the image, with zeroed "hole" as above */
				FUNC11(page, pageData->image, pageHeader->pd_lower);
				FUNC12(page + pageHeader->pd_lower, 0,
					   pageHeader->pd_upper - pageHeader->pd_lower);
				FUNC11(page + pageHeader->pd_upper,
					   pageData->image + pageHeader->pd_upper,
					   BLCKSZ - pageHeader->pd_upper);

				FUNC9(i, pageData->buffer, REGBUF_STANDARD);
				FUNC8(i, pageData->delta, pageData->deltaLen);
			}
		}

		/* Insert xlog record */
		lsn = FUNC7(RM_GENERIC_ID, 0);

		/* Set LSN and mark buffers dirty */
		for (i = 0; i < MAX_GENERIC_XLOG_PAGES; i++)
		{
			PageData   *pageData = &state->pages[i];

			if (FUNC1(pageData->buffer))
				continue;
			FUNC4(FUNC0(pageData->buffer), lsn);
			FUNC3(pageData->buffer);
		}
		FUNC2();
	}
	else
	{
		/* Unlogged relation: skip xlog-related stuff */
		FUNC5();
		for (i = 0; i < MAX_GENERIC_XLOG_PAGES; i++)
		{
			PageData   *pageData = &state->pages[i];

			if (FUNC1(pageData->buffer))
				continue;
			FUNC11(FUNC0(pageData->buffer),
				   pageData->image,
				   BLCKSZ);
			/* We don't worry about zeroing the "hole" in this case */
			FUNC3(pageData->buffer);
		}
		FUNC2();
		/* We don't have a LSN to return, in this case */
		lsn = InvalidXLogRecPtr;
	}

	FUNC13(state);

	return lsn;
}