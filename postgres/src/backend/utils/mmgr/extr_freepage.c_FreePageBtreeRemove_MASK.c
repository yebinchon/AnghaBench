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
struct TYPE_9__ {scalar_t__ magic; size_t nused; } ;
struct TYPE_8__ {int /*<<< orphan*/ * leaf_key; } ;
struct TYPE_10__ {TYPE_2__ hdr; TYPE_1__ u; } ;
typedef  size_t Size ;
typedef  int /*<<< orphan*/  FreePageManager ;
typedef  int /*<<< orphan*/  FreePageBtreeLeafKey ;
typedef  TYPE_3__ FreePageBtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FREE_PAGE_LEAF_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(FreePageManager *fpm, FreePageBtree *btp, Size index)
{
	FUNC0(btp->hdr.magic == FREE_PAGE_LEAF_MAGIC);
	FUNC0(index < btp->hdr.nused);

	/* When last item is removed, extirpate entire page from btree. */
	if (btp->hdr.nused == 1)
	{
		FUNC3(fpm, btp);
		return;
	}

	/* Physically remove the key from the page. */
	--btp->hdr.nused;
	if (index < btp->hdr.nused)
		FUNC4(&btp->u.leaf_key[index], &btp->u.leaf_key[index + 1],
				sizeof(FreePageBtreeLeafKey) * (btp->hdr.nused - index));

	/* If we just removed the first key, adjust ancestor keys. */
	if (index == 0)
		FUNC1(fpm, btp);

	/* Consider whether to consolidate this page with a sibling. */
	FUNC2(fpm, btp);
}