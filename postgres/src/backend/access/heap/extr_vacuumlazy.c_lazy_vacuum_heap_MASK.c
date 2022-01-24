#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_dead_tuples; int /*<<< orphan*/ * dead_tuples; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  PGRUsage ;
typedef  TYPE_1__ LVRelStats ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  elevel ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vac_strategy ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static void
FUNC17(Relation onerel, LVRelStats *vacrelstats)
{
	int			tupindex;
	int			npages;
	PGRUsage	ru0;
	Buffer		vmbuffer = InvalidBuffer;

	FUNC14(&ru0);
	npages = 0;

	tupindex = 0;
	while (tupindex < vacrelstats->num_dead_tuples)
	{
		BlockNumber tblk;
		Buffer		buf;
		Page		page;
		Size		freespace;

		FUNC16();

		tblk = FUNC3(&vacrelstats->dead_tuples[tupindex]);
		buf = FUNC5(onerel, MAIN_FORKNUM, tblk, RBM_NORMAL,
								 vac_strategy);
		if (!FUNC2(buf))
		{
			FUNC8(buf);
			++tupindex;
			continue;
		}
		tupindex = FUNC13(onerel, tblk, buf, tupindex, vacrelstats,
									&vmbuffer);

		/* Now that we've compacted the page, record its available space */
		page = FUNC0(buf);
		freespace = FUNC4(page);

		FUNC9(buf);
		FUNC6(onerel, tblk, freespace);
		npages++;
	}

	if (FUNC1(vmbuffer))
	{
		FUNC8(vmbuffer);
		vmbuffer = InvalidBuffer;
	}

	FUNC10(elevel,
			(FUNC12("\"%s\": removed %d row versions in %d pages",
					FUNC7(onerel),
					tupindex, npages),
			 FUNC11("%s", FUNC15(&ru0))));
}