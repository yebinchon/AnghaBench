#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ level; } ;
struct TYPE_9__ {TYPE_1__ btpo; } ;
struct TYPE_8__ {scalar_t__ bts_offset; int /*<<< orphan*/ * bts_parent; void* bts_blkno; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ IndexTuple ;
typedef  scalar_t__ Buffer ;
typedef  void* BlockNumber ;
typedef  TYPE_2__ BTStackData ;
typedef  TYPE_2__* BTStack ;
typedef  TYPE_4__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidBuffer ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  P_HIKEY ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 

__attribute__((used)) static void
FUNC19(Relation rel,
				  Buffer buf,
				  Buffer rbuf,
				  BTStack stack,
				  bool is_root,
				  bool is_only)
{
	/*
	 * Here we have to do something Lehman and Yao don't talk about: deal with
	 * a root split and construction of a new root.  If our stack is empty
	 * then we have just split a node on what had been the root level when we
	 * descended the tree.  If it was still the root then we perform a
	 * new-root construction.  If it *wasn't* the root anymore, search to find
	 * the next higher level that someone constructed meanwhile, and find the
	 * right place to insert as for the normal case.
	 *
	 * If we have to search for the parent level, we do so by re-descending
	 * from the root.  This is not super-efficient, but it's rare enough not
	 * to matter.
	 */
	if (is_root)
	{
		Buffer		rootbuf;

		FUNC0(stack == NULL);
		FUNC0(is_only);
		/* create a new root node and update the metapage */
		rootbuf = FUNC12(rel, buf, rbuf);
		/* release the split buffers */
		FUNC13(rel, rootbuf);
		FUNC13(rel, rbuf);
		FUNC13(rel, buf);
	}
	else
	{
		BlockNumber bknum = FUNC2(buf);
		BlockNumber rbknum = FUNC2(rbuf);
		Page		page = FUNC3(buf);
		IndexTuple	new_item;
		BTStackData fakestack;
		IndexTuple	ritem;
		Buffer		pbuf;

		if (stack == NULL)
		{
			BTPageOpaque lpageop;

			FUNC14(DEBUG2, "concurrent ROOT page split");
			lpageop = (BTPageOpaque) FUNC7(page);
			/* Find the leftmost page at the next level up */
			pbuf = FUNC9(rel, lpageop->btpo.level + 1, false,
									NULL);
			/* Set up a phony stack entry pointing there */
			stack = &fakestack;
			stack->bts_blkno = FUNC2(pbuf);
			stack->bts_offset = InvalidOffsetNumber;
			stack->bts_parent = NULL;
			FUNC13(rel, pbuf);
		}

		/* get high key from left, a strict lower bound for new right page */
		ritem = (IndexTuple) FUNC5(page,
										 FUNC6(page, P_HIKEY));

		/* form an index tuple that points at the new right page */
		new_item = FUNC4(ritem);
		FUNC1(new_item, rbknum);

		/*
		 * Re-find and write lock the parent of buf.
		 *
		 * It's possible that the location of buf's downlink has changed since
		 * our initial _bt_search() descent.  _bt_getstackbuf() will detect
		 * and recover from this, updating the stack, which ensures that the
		 * new downlink will be inserted at the correct offset. Even buf's
		 * parent may have changed.
		 */
		pbuf = FUNC10(rel, stack, bknum);

		/*
		 * Now we can unlock the right child. The left child will be unlocked
		 * by _bt_insertonpg().
		 */
		FUNC13(rel, rbuf);

		if (pbuf == InvalidBuffer)
			FUNC15(ERROR,
					(FUNC16(ERRCODE_INDEX_CORRUPTED),
					 FUNC17("failed to re-find parent key in index \"%s\" for split pages %u/%u",
									 FUNC8(rel), bknum, rbknum)));

		/* Recursively insert into the parent */
		FUNC11(rel, NULL, pbuf, buf, stack->bts_parent,
					   new_item, stack->bts_offset + 1,
					   is_only);

		/* be tidy */
		FUNC18(new_item);
	}
}