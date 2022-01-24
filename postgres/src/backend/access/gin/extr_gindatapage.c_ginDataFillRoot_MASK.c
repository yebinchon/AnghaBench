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
struct TYPE_4__ {void* key; } ;
typedef  TYPE_1__ PostingItem ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  GinBtree ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 void** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC3(GinBtree btree, Page root, BlockNumber lblkno, Page lpage, BlockNumber rblkno, Page rpage)
{
	PostingItem li,
				ri;

	li.key = *FUNC1(lpage);
	FUNC2(&li, lblkno);
	FUNC0(root, &li, InvalidOffsetNumber);

	ri.key = *FUNC1(rpage);
	FUNC2(&ri, rblkno);
	FUNC0(root, &ri, InvalidOffsetNumber);
}