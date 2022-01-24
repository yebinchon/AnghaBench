#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_8__ {scalar_t__ recheckCurItem; int /*<<< orphan*/  curItem; int /*<<< orphan*/  curItemMatches; scalar_t__ isFinished; } ;
struct TYPE_7__ {scalar_t__ nkeys; scalar_t__ keys; int /*<<< orphan*/  tempCtx; int /*<<< orphan*/  ginstate; } ;
struct TYPE_6__ {int /*<<< orphan*/  xs_snapshot; int /*<<< orphan*/  opaque; } ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  TYPE_2__* GinScanOpaque ;
typedef  TYPE_3__* GinScanKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC10(IndexScanDesc scan, ItemPointerData advancePast,
			ItemPointerData *item, bool *recheck)
{
	GinScanOpaque so = (GinScanOpaque) scan->opaque;
	uint32		i;
	bool		match;

	/*----------
	 * Advance the scan keys in lock-step, until we find an item that matches
	 * all the keys. If any key reports isFinished, meaning its subset of the
	 * entries is exhausted, we can stop.  Otherwise, set *item to the next
	 * matching item.
	 *
	 * This logic works only if a keyGetItem stream can never contain both
	 * exact and lossy pointers for the same page.  Else we could have a
	 * case like
	 *
	 *		stream 1		stream 2
	 *		...             ...
	 *		42/6			42/7
	 *		50/1			42/0xffff
	 *		...             ...
	 *
	 * We would conclude that 42/6 is not a match and advance stream 1,
	 * thus never detecting the match to the lossy pointer in stream 2.
	 * (keyGetItem has a similar problem versus entryGetItem.)
	 *----------
	 */
	do
	{
		FUNC6(item);
		match = true;
		for (i = 0; i < so->nkeys && match; i++)
		{
			GinScanKey	key = so->keys + i;

			/* Fetch the next item for this key that is > advancePast. */
			FUNC9(&so->ginstate, so->tempCtx, key, advancePast,
					   scan->xs_snapshot);

			if (key->isFinished)
				return false;

			/*
			 * If it's not a match, we can immediately conclude that nothing
			 * <= this item matches, without checking the rest of the keys.
			 */
			if (!key->curItemMatches)
			{
				advancePast = key->curItem;
				match = false;
				break;
			}

			/*
			 * It's a match. We can conclude that nothing < matches, so the
			 * other key streams can skip to this item.
			 *
			 * Beware of lossy pointers, though; from a lossy pointer, we can
			 * only conclude that nothing smaller than this *block* matches.
			 */
			if (FUNC3(&key->curItem))
			{
				if (FUNC1(&advancePast) <
					FUNC1(&key->curItem))
				{
					FUNC5(&advancePast,
								   FUNC1(&key->curItem),
								   InvalidOffsetNumber);
				}
			}
			else
			{
				FUNC0(FUNC2(&key->curItem) > 0);
				FUNC5(&advancePast,
							   FUNC1(&key->curItem),
							   FUNC7(FUNC2(&key->curItem)));
			}

			/*
			 * If this is the first key, remember this location as a potential
			 * match, and proceed to check the rest of the keys.
			 *
			 * Otherwise, check if this is the same item that we checked the
			 * previous keys for (or a lossy pointer for the same page). If
			 * not, loop back to check the previous keys for this item (we
			 * will check this key again too, but keyGetItem returns quickly
			 * for that)
			 */
			if (i == 0)
			{
				*item = key->curItem;
			}
			else
			{
				if (FUNC3(&key->curItem) ||
					FUNC3(item))
				{
					FUNC0(FUNC1(&key->curItem) >= FUNC1(item));
					match = (FUNC1(&key->curItem) ==
							 FUNC1(item));
				}
				else
				{
					FUNC0(FUNC8(&key->curItem, item) >= 0);
					match = (FUNC8(&key->curItem, item) == 0);
				}
			}
		}
	} while (!match);

	FUNC0(!FUNC4(item));

	/*
	 * Now *item contains the first ItemPointer after previous result that
	 * satisfied all the keys for that exact TID, or a lossy reference to the
	 * same page.
	 *
	 * We must return recheck = true if any of the keys are marked recheck.
	 */
	*recheck = false;
	for (i = 0; i < so->nkeys; i++)
	{
		GinScanKey	key = so->keys + i;

		if (key->recheckCurItem)
		{
			*recheck = true;
			break;
		}
	}

	return true;
}