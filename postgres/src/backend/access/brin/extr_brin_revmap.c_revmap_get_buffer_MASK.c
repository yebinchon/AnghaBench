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
struct TYPE_4__ {scalar_t__ rm_lastRevmapPage; int /*<<< orphan*/  rm_currBuf; int /*<<< orphan*/  rm_irel; } ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_1__ BrinRevmap ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BRIN_METAPAGE_BLKNO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static Buffer
FUNC6(BrinRevmap *revmap, BlockNumber heapBlk)
{
	BlockNumber mapBlk;

	/* Translate the heap block number to physical index location. */
	mapBlk = FUNC5(revmap, heapBlk);

	if (mapBlk == InvalidBlockNumber)
		FUNC4(ERROR, "revmap does not cover heap block %u", heapBlk);

	/* Ensure the buffer we got is in the expected range */
	FUNC0(mapBlk != BRIN_METAPAGE_BLKNO &&
		   mapBlk <= revmap->rm_lastRevmapPage);

	/*
	 * Obtain the buffer from which we need to read.  If we already have the
	 * correct buffer in our access struct, use that; otherwise, release that,
	 * (if valid) and read the one we need.
	 */
	if (revmap->rm_currBuf == InvalidBuffer ||
		mapBlk != FUNC1(revmap->rm_currBuf))
	{
		if (revmap->rm_currBuf != InvalidBuffer)
			FUNC3(revmap->rm_currBuf);

		revmap->rm_currBuf = FUNC2(revmap->rm_irel, mapBlk);
	}

	return revmap->rm_currBuf;
}