#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TIDBitmap ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  GinPostingList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

int
FUNC3(GinPostingList *ptr, int len,
									 TIDBitmap *tbm)
{
	int			ndecoded;
	ItemPointer items;

	items = FUNC0(ptr, len, &ndecoded);
	FUNC2(tbm, items, ndecoded, false);
	FUNC1(items);

	return ndecoded;
}