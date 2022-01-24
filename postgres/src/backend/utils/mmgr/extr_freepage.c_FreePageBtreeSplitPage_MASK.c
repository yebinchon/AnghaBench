#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ magic; int nused; int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {int /*<<< orphan*/ * internal_key; int /*<<< orphan*/ * leaf_key; } ;
struct TYPE_10__ {TYPE_2__ hdr; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  FreePageManager ;
typedef  int /*<<< orphan*/  FreePageBtreeLeafKey ;
typedef  int /*<<< orphan*/  FreePageBtreeInternalKey ;
typedef  TYPE_3__ FreePageBtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ; 
 scalar_t__ FREE_PAGE_LEAF_MAGIC ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static FreePageBtree *
FUNC6(FreePageManager *fpm, FreePageBtree *btp)
{
	FreePageBtree *newsibling;

	newsibling = FUNC1(fpm);
	newsibling->hdr.magic = btp->hdr.magic;
	newsibling->hdr.nused = btp->hdr.nused / 2;
	FUNC5(newsibling->hdr.parent, btp->hdr.parent);
	btp->hdr.nused -= newsibling->hdr.nused;

	if (btp->hdr.magic == FREE_PAGE_LEAF_MAGIC)
		FUNC4(&newsibling->u.leaf_key,
			   &btp->u.leaf_key[btp->hdr.nused],
			   sizeof(FreePageBtreeLeafKey) * newsibling->hdr.nused);
	else
	{
		FUNC0(btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
		FUNC4(&newsibling->u.internal_key,
			   &btp->u.internal_key[btp->hdr.nused],
			   sizeof(FreePageBtreeInternalKey) * newsibling->hdr.nused);
		FUNC2(FUNC3(fpm), newsibling);
	}

	return newsibling;
}