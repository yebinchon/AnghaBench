#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_18__ {int /*<<< orphan*/  rnode; int /*<<< orphan*/  blockNum; int /*<<< orphan*/  forkNum; } ;
struct TYPE_21__ {TYPE_1__ tag; int /*<<< orphan*/  state; } ;
struct TYPE_20__ {struct TYPE_20__* previous; void* arg; int /*<<< orphan*/  callback; } ;
struct TYPE_19__ {int /*<<< orphan*/  rd_smgr; int /*<<< orphan*/  rd_node; } ;
typedef  TYPE_2__* Relation ;
typedef  char* Page ;
typedef  TYPE_3__ ErrorContextCallback ;
typedef  TYPE_4__ BufferDesc ;

/* Variables and functions */
 int BM_DIRTY ; 
 int BM_JUST_DIRTIED ; 
 int BM_VALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int) ; 
 TYPE_4__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_4__*) ; 
 int NBuffers ; 
 int NLocBuffer ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int) ; 
 TYPE_3__* error_context_stack ; 
 int /*<<< orphan*/  local_buffer_write_error_callback ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

void
FUNC20(Relation rel)
{
	int			i;
	BufferDesc *bufHdr;

	/* Open rel at the smgr level if not already done */
	FUNC11(rel);

	if (FUNC12(rel))
	{
		for (i = 0; i < NLocBuffer; i++)
		{
			uint32		buf_state;

			bufHdr = FUNC3(i);
			if (FUNC10(bufHdr->tag.rnode, rel->rd_node) &&
				((buf_state = FUNC17(&bufHdr->state)) &
				 (BM_VALID | BM_DIRTY)) == (BM_VALID | BM_DIRTY))
			{
				ErrorContextCallback errcallback;
				Page		localpage;

				localpage = (char *) FUNC6(bufHdr);

				/* Setup error traceback support for ereport() */
				errcallback.callback = local_buffer_write_error_callback;
				errcallback.arg = (void *) bufHdr;
				errcallback.previous = error_context_stack;
				error_context_stack = &errcallback;

				FUNC8(localpage, bufHdr->tag.blockNum);

				FUNC19(rel->rd_smgr,
						  bufHdr->tag.forkNum,
						  bufHdr->tag.blockNum,
						  localpage,
						  false);

				buf_state &= ~(BM_DIRTY | BM_JUST_DIRTIED);
				FUNC18(&bufHdr->state, buf_state);

				/* Pop the error context stack */
				error_context_stack = errcallback.previous;
			}
		}

		return;
	}

	/* Make sure we can handle the pin inside the loop */
	FUNC14(CurrentResourceOwner);

	for (i = 0; i < NBuffers; i++)
	{
		uint32		buf_state;

		bufHdr = FUNC2(i);

		/*
		 * As in DropRelFileNodeBuffers, an unlocked precheck should be safe
		 * and saves some cycles.
		 */
		if (!FUNC10(bufHdr->tag.rnode, rel->rd_node))
			continue;

		FUNC13();

		buf_state = FUNC7(bufHdr);
		if (FUNC10(bufHdr->tag.rnode, rel->rd_node) &&
			(buf_state & (BM_VALID | BM_DIRTY)) == (BM_VALID | BM_DIRTY))
		{
			FUNC9(bufHdr);
			FUNC4(FUNC0(bufHdr), LW_SHARED);
			FUNC1(bufHdr, rel->rd_smgr);
			FUNC5(FUNC0(bufHdr));
			FUNC16(bufHdr, true);
		}
		else
			FUNC15(bufHdr, buf_state);
	}
}