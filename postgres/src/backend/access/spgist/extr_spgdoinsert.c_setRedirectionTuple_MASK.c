#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  page; } ;
struct TYPE_4__ {scalar_t__ tupstate; int /*<<< orphan*/  pointer; } ;
typedef  TYPE_1__* SpGistDeadTuple ;
typedef  TYPE_2__ SPPageDesc ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SPGIST_METAPAGE_BLKNO ; 
 scalar_t__ SPGIST_REDIRECT ; 

__attribute__((used)) static void
FUNC5(SPPageDesc *current, OffsetNumber position,
					BlockNumber blkno, OffsetNumber offnum)
{
	SpGistDeadTuple dt;

	dt = (SpGistDeadTuple) FUNC3(current->page,
									   FUNC4(current->page, position));
	FUNC0(dt->tupstate == SPGIST_REDIRECT);
	FUNC0(FUNC1(&dt->pointer) == SPGIST_METAPAGE_BLKNO);
	FUNC2(&dt->pointer, blkno, offnum);
}