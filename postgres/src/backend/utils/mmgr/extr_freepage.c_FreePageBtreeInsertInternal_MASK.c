#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int first_page; int /*<<< orphan*/  child; } ;
struct TYPE_10__ {scalar_t__ magic; int nused; } ;
struct TYPE_9__ {TYPE_5__* internal_key; } ;
struct TYPE_11__ {TYPE_2__ hdr; TYPE_1__ u; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  FreePageBtreeInternalKey ;
typedef  TYPE_3__ FreePageBtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FPM_ITEMS_PER_INTERNAL_PAGE ; 
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC3(char *base, FreePageBtree *btp, Size index,
							Size first_page, FreePageBtree *child)
{
	FUNC0(btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
	FUNC0(btp->hdr.nused <= FPM_ITEMS_PER_INTERNAL_PAGE);
	FUNC0(index <= btp->hdr.nused);
	FUNC1(&btp->u.internal_key[index + 1], &btp->u.internal_key[index],
			sizeof(FreePageBtreeInternalKey) * (btp->hdr.nused - index));
	btp->u.internal_key[index].first_page = first_page;
	FUNC2(base, btp->u.internal_key[index].child, child);
	++btp->hdr.nused;
}