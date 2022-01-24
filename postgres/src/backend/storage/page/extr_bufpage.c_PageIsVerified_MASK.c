#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16 ;
struct TYPE_2__ {scalar_t__ pd_checksum; int pd_flags; scalar_t__ pd_lower; scalar_t__ pd_upper; scalar_t__ pd_special; } ;
typedef  TYPE_1__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int BLCKSZ ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int PD_VALID_FLAG_BITS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ ignore_checksum_failure ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

bool
FUNC8(Page page, BlockNumber blkno)
{
	PageHeader	p = (PageHeader) page;
	size_t	   *pagebytes;
	int			i;
	bool		checksum_failure = false;
	bool		header_sane = false;
	bool		all_zeroes = false;
	uint16		checksum = 0;

	/*
	 * Don't verify page data unless the page passes basic non-zero test
	 */
	if (!FUNC2(page))
	{
		if (FUNC0())
		{
			checksum = FUNC6((char *) page, blkno);

			if (checksum != p->pd_checksum)
				checksum_failure = true;
		}

		/*
		 * The following checks don't prove the header is correct, only that
		 * it looks sane enough to allow into the buffer pool. Later usage of
		 * the block can still reveal problems, which is why we offer the
		 * checksum option.
		 */
		if ((p->pd_flags & ~PD_VALID_FLAG_BITS) == 0 &&
			p->pd_lower <= p->pd_upper &&
			p->pd_upper <= p->pd_special &&
			p->pd_special <= BLCKSZ &&
			p->pd_special == FUNC1(p->pd_special))
			header_sane = true;

		if (header_sane && !checksum_failure)
			return true;
	}

	/*
	 * Check all-zeroes case. Luckily BLCKSZ is guaranteed to always be a
	 * multiple of size_t - and it's much faster to compare memory using the
	 * native word size.
	 */
	FUNC3(BLCKSZ == (BLCKSZ / sizeof(size_t)) * sizeof(size_t),
					 "BLCKSZ has to be a multiple of sizeof(size_t)");

	all_zeroes = true;
	pagebytes = (size_t *) page;
	for (i = 0; i < (BLCKSZ / sizeof(size_t)); i++)
	{
		if (pagebytes[i] != 0)
		{
			all_zeroes = false;
			break;
		}
	}

	if (all_zeroes)
		return true;

	/*
	 * Throw a WARNING if the checksum fails, but only after we've checked for
	 * the all-zeroes case.
	 */
	if (checksum_failure)
	{
		FUNC4(WARNING,
				(ERRCODE_DATA_CORRUPTED,
				 FUNC5("page verification failed, calculated checksum %u but expected %u",
						checksum, p->pd_checksum)));

		FUNC7();

		if (header_sane && ignore_checksum_failure)
			return true;
	}

	return false;
}