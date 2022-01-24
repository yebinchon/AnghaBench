#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  btm_root; } ;
struct TYPE_7__ {int /*<<< orphan*/  btpo_next; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BTStack ;
typedef  TYPE_1__* BTPageOpaque ;
typedef  TYPE_2__ BTMetaPageData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTREE_METAPAGE ; 
 int /*<<< orphan*/  BT_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(Relation rel, Buffer lbuf, BTStack stack)
{
	Page		lpage = FUNC3(lbuf);
	BTPageOpaque lpageop = (BTPageOpaque) FUNC7(lpage);
	Buffer		rbuf;
	Page		rpage;
	BTPageOpaque rpageop;
	bool		was_root;
	bool		was_only;

	FUNC0(FUNC4(lpageop));

	/* Lock right sibling, the one missing the downlink */
	rbuf = FUNC8(rel, lpageop->btpo_next, BT_WRITE);
	rpage = FUNC3(rbuf);
	rpageop = (BTPageOpaque) FUNC7(rpage);

	/* Could this be a root split? */
	if (!stack)
	{
		Buffer		metabuf;
		Page		metapg;
		BTMetaPageData *metad;

		/* acquire lock on the metapage */
		metabuf = FUNC8(rel, BTREE_METAPAGE, BT_WRITE);
		metapg = FUNC3(metabuf);
		metad = FUNC1(metapg);

		was_root = (metad->btm_root == FUNC2(lbuf));

		FUNC10(rel, metabuf);
	}
	else
		was_root = false;

	/* Was this the only page on the level before split? */
	was_only = (FUNC5(lpageop) && FUNC6(rpageop));

	FUNC11(DEBUG1, "finishing incomplete split of %u/%u",
		 FUNC2(lbuf), FUNC2(rbuf));

	FUNC9(rel, lbuf, rbuf, stack, was_root, was_only);
}