#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int bitmapword ;
struct TYPE_6__ {int* words; scalar_t__ ischunk; } ;
struct TYPE_5__ {scalar_t__ nchunks; scalar_t__ status; int /*<<< orphan*/  pagetable; } ;
typedef  TYPE_1__ TIDBitmap ;
typedef  TYPE_2__ PagetableEntry ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int PAGES_PER_CHUNK ; 
 scalar_t__ TBM_HASH ; 
 int FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC4(const TIDBitmap *tbm, BlockNumber pageno)
{
	PagetableEntry *page;
	BlockNumber chunk_pageno;
	int			bitno;

	/* we can skip the lookup if there are no lossy chunks */
	if (tbm->nchunks == 0)
		return false;
	FUNC0(tbm->status == TBM_HASH);

	bitno = pageno % PAGES_PER_CHUNK;
	chunk_pageno = pageno - bitno;

	page = FUNC3(tbm->pagetable, chunk_pageno);

	if (page != NULL && page->ischunk)
	{
		int			wordnum = FUNC2(bitno);
		int			bitnum = FUNC1(bitno);

		if ((page->words[wordnum] & ((bitmapword) 1 << bitnum)) != 0)
			return true;
	}
	return false;
}