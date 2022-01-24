#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_14__ {int level; } ;
struct TYPE_16__ {TYPE_1__ btpo; int /*<<< orphan*/  btpo_prev; } ;
struct TYPE_15__ {scalar_t__ targetblock; int targetlsn; int /*<<< orphan*/  rel; int /*<<< orphan*/  target; int /*<<< orphan*/  downlinkfilter; scalar_t__ rightsplit; scalar_t__ readonly; scalar_t__ heapallindexed; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_2__ BtreeCheckState ;
typedef  scalar_t__ BlockNumber ;
typedef  TYPE_3__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERRCODE_NO_DATA ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  P_HIKEY ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,scalar_t__,scalar_t__,int,...) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC24(BtreeCheckState *state)
{
	BTPageOpaque topaque = (BTPageOpaque) FUNC13(state->target);
	ItemId		itemid;
	IndexTuple	itup;
	Page		child;
	BTPageOpaque copaque;
	uint32		level;
	BlockNumber childblk;

	FUNC0(state->heapallindexed && state->readonly);
	FUNC0(!FUNC5(topaque));

	/* No next level up with downlinks to fingerprint from the true root */
	if (FUNC9(topaque))
		return;

	/*
	 * Incomplete (interrupted) page splits can account for the lack of a
	 * downlink.  Some inserting transaction should eventually complete the
	 * page split in passing, when it notices that the left sibling page is
	 * P_INCOMPLETE_SPLIT().
	 *
	 * In general, VACUUM is not prepared for there to be no downlink to a
	 * page that it deletes.  This is the main reason why the lack of a
	 * downlink can be reported as corruption here.  It's not obvious that an
	 * invalid missing downlink can result in wrong answers to queries,
	 * though, since index scans that land on the child may end up
	 * consistently moving right. The handling of concurrent page splits (and
	 * page deletions) within _bt_moveright() cannot distinguish
	 * inconsistencies that last for a moment from inconsistencies that are
	 * permanent and irrecoverable.
	 *
	 * VACUUM isn't even prepared to delete pages that have no downlink due to
	 * an incomplete page split, but it can detect and reason about that case
	 * by design, so it shouldn't be taken to indicate corruption.  See
	 * _bt_pagedel() for full details.
	 */
	if (state->rightsplit)
	{
		FUNC17(DEBUG1,
				(FUNC18(ERRCODE_NO_DATA),
				 FUNC20("harmless interrupted page split detected in index %s",
						FUNC14(state->rel)),
				 FUNC19("Block=%u level=%u left sibling=%u page lsn=%X/%X.",
									state->targetblock, topaque->btpo.level,
									topaque->btpo_prev,
									(uint32) (state->targetlsn >> 32),
									(uint32) state->targetlsn)));
		return;
	}

	/* Target's downlink is typically present in parent/fingerprinted */
	if (!FUNC15(state->downlinkfilter,
							 (unsigned char *) &state->targetblock,
							 sizeof(BlockNumber)))
		return;

	/*
	 * Target is probably the "top parent" of a multi-level page deletion.
	 * We'll need to descend the subtree to make sure that descendant pages
	 * are consistent with that, though.
	 *
	 * If the target page (which must be non-ignorable) is a leaf page, then
	 * clearly it can't be the top parent.  The lack of a downlink is probably
	 * a symptom of a broad problem that could just as easily cause
	 * inconsistencies anywhere else.
	 */
	if (FUNC8(topaque))
		FUNC17(ERROR,
				(FUNC18(ERRCODE_INDEX_CORRUPTED),
				 FUNC20("leaf index block lacks downlink in index \"%s\"",
						FUNC14(state->rel)),
				 FUNC19("Block=%u page lsn=%X/%X.",
									state->targetblock,
									(uint32) (state->targetlsn >> 32),
									(uint32) state->targetlsn)));

	/* Descend from the target page, which is an internal page */
	FUNC16(DEBUG1, "checking for interrupted multi-level deletion due to missing downlink in index \"%s\"",
		 FUNC14(state->rel));

	level = topaque->btpo.level;
	itemid = FUNC12(state, state->targetblock, state->target,
								  FUNC4(topaque));
	itup = (IndexTuple) FUNC11(state->target, itemid);
	childblk = FUNC1(itup);
	for (;;)
	{
		FUNC3();

		child = FUNC22(state, childblk);
		copaque = (BTPageOpaque) FUNC13(child);

		if (FUNC8(copaque))
			break;

		/* Do an extra sanity check in passing on internal pages */
		if (copaque->btpo.level != level - 1)
			FUNC17(ERROR,
					(FUNC18(ERRCODE_INDEX_CORRUPTED),
					 FUNC21("downlink points to block in index \"%s\" whose level is not one level down",
									 FUNC14(state->rel)),
					 FUNC19("Top parent/target block=%u block pointed to=%u expected level=%u level in pointed to block=%u.",
										state->targetblock, childblk,
										level - 1, copaque->btpo.level)));

		level = copaque->btpo.level;
		itemid = FUNC12(state, childblk, child,
									  FUNC4(copaque));
		itup = (IndexTuple) FUNC11(child, itemid);
		childblk = FUNC1(itup);
		/* Be slightly more pro-active in freeing this memory, just in case */
		FUNC23(child);
	}

	/*
	 * Since there cannot be a concurrent VACUUM operation in readonly mode,
	 * and since a page has no links within other pages (siblings and parent)
	 * once it is marked fully deleted, it should be impossible to land on a
	 * fully deleted page.  See bt_downlink_check() for further details.
	 *
	 * The bt_downlink_check() P_ISDELETED() check is repeated here because
	 * bt_downlink_check() does not visit pages reachable through negative
	 * infinity items.  Besides, bt_downlink_check() is unwilling to descend
	 * multiple levels.  (The similar bt_downlink_check() P_ISDELETED() check
	 * within bt_check_level_from_leftmost() won't reach the page either,
	 * since the leaf's live siblings should have their sibling links updated
	 * to bypass the deletion target page when it is marked fully dead.)
	 *
	 * If this error is raised, it might be due to a previous multi-level page
	 * deletion that failed to realize that it wasn't yet safe to mark the
	 * leaf page as fully dead.  A "dangling downlink" will still remain when
	 * this happens.  The fact that the dangling downlink's page (the leaf's
	 * parent/ancestor page) lacked a downlink is incidental.
	 */
	if (FUNC6(copaque))
		FUNC17(ERROR,
				(FUNC18(ERRCODE_INDEX_CORRUPTED),
				 FUNC21("downlink to deleted leaf page found in index \"%s\"",
								 FUNC14(state->rel)),
				 FUNC19("Top parent/target block=%u leaf block=%u top parent/target lsn=%X/%X.",
									state->targetblock, childblk,
									(uint32) (state->targetlsn >> 32),
									(uint32) state->targetlsn)));

	/*
	 * Iff leaf page is half-dead, its high key top parent link should point
	 * to what VACUUM considered to be the top parent page at the instant it
	 * was interrupted.  Provided the high key link actually points to the
	 * target page, the missing downlink we detected is consistent with there
	 * having been an interrupted multi-level page deletion.  This means that
	 * the subtree with the target page at its root (a page deletion chain) is
	 * in a consistent state, enabling VACUUM to resume deleting the entire
	 * chain the next time it encounters the half-dead leaf page.
	 */
	if (FUNC7(copaque) && !FUNC10(copaque))
	{
		itemid = FUNC12(state, childblk, child, P_HIKEY);
		itup = (IndexTuple) FUNC11(child, itemid);
		if (FUNC2(itup) == state->targetblock)
			return;
	}

	FUNC17(ERROR,
			(FUNC18(ERRCODE_INDEX_CORRUPTED),
			 FUNC20("internal index block lacks downlink in index \"%s\"",
					FUNC14(state->rel)),
			 FUNC19("Block=%u level=%u page lsn=%X/%X.",
								state->targetblock, topaque->btpo.level,
								(uint32) (state->targetlsn >> 32),
								(uint32) state->targetlsn)));
}