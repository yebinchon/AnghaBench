#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  entryCategory; int /*<<< orphan*/  entryKey; int /*<<< orphan*/  entryAttnum; int /*<<< orphan*/  ginstate; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  TYPE_1__* GinBtree ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5(GinBtree btree, Page page)
{
	IndexTuple	itup;
	OffsetNumber attnum;
	Datum		key;
	GinNullCategory category;

	if (FUNC0(page))
		return false;

	itup = FUNC1(page);
	attnum = FUNC3(btree->ginstate, itup);
	key = FUNC4(btree->ginstate, itup, &category);

	if (FUNC2(btree->ginstate,
							 btree->entryAttnum, btree->entryKey, btree->entryCategory,
							 attnum, key, category) > 0)
		return true;

	return false;
}