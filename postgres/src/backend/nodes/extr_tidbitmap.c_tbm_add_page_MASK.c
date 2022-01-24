#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ nentries; scalar_t__ maxentries; } ;
typedef  TYPE_1__ TIDBitmap ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC2(TIDBitmap *tbm, BlockNumber pageno)
{
	/* Enter the page in the bitmap, or mark it lossy if already present */
	FUNC1(tbm, pageno);
	/* If we went over the memory limit, lossify some more pages */
	if (tbm->nentries > tbm->maxentries)
		FUNC0(tbm);
}