#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_3__ {scalar_t__ forkno; scalar_t__ block; int flags; int in_use; int /*<<< orphan*/  rnode; scalar_t__ rdata_len; int /*<<< orphan*/  rdata_head; int /*<<< orphan*/ * rdata_tail; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ registered_buffer ;
typedef  int /*<<< orphan*/  XLogRecData ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ ForkNumber ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int REGBUF_FORCE_IMAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int begininsert_called ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int max_registered_block_id ; 
 int max_registered_buffers ; 
 TYPE_1__* registered_buffers ; 

void
FUNC3(uint8 block_id, RelFileNode *rnode, ForkNumber forknum,
				  BlockNumber blknum, Page page, uint8 flags)
{
	registered_buffer *regbuf;

	/* This is currently only used to WAL-log a full-page image of a page */
	FUNC0(flags & REGBUF_FORCE_IMAGE);
	FUNC0(begininsert_called);

	if (block_id >= max_registered_block_id)
		max_registered_block_id = block_id + 1;

	if (block_id >= max_registered_buffers)
		FUNC2(ERROR, "too many registered buffers");

	regbuf = &registered_buffers[block_id];

	regbuf->rnode = *rnode;
	regbuf->forkno = forknum;
	regbuf->block = blknum;
	regbuf->page = page;
	regbuf->flags = flags;
	regbuf->rdata_tail = (XLogRecData *) &regbuf->rdata_head;
	regbuf->rdata_len = 0;

	/*
	 * Check that this page hasn't already been registered with some other
	 * block_id.
	 */
#ifdef USE_ASSERT_CHECKING
	{
		int			i;

		for (i = 0; i < max_registered_block_id; i++)
		{
			registered_buffer *regbuf_old = &registered_buffers[i];

			if (i == block_id || !regbuf_old->in_use)
				continue;

			Assert(!RelFileNodeEquals(regbuf_old->rnode, regbuf->rnode) ||
				   regbuf_old->forkno != regbuf->forkno ||
				   regbuf_old->block != regbuf->block);
		}
	}
#endif

	regbuf->in_use = true;
}