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
struct TYPE_2__ {scalar_t__ maxoff; } ;
typedef  int /*<<< orphan*/  PostingItem ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  GinBtree ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BlockNumber
FUNC6(GinBtree btree, Page page)
{
	PostingItem *pitem;

	FUNC0(!FUNC4(page));
	FUNC0(FUNC3(page));
	FUNC0(FUNC2(page)->maxoff >= FirstOffsetNumber);

	pitem = FUNC1(page, FirstOffsetNumber);
	return FUNC5(pitem);
}