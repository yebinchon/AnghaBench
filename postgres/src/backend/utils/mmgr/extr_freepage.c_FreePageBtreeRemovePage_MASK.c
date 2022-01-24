#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int nused; scalar_t__ magic; int /*<<< orphan*/  parent; } ;
struct TYPE_19__ {int /*<<< orphan*/ * internal_key; int /*<<< orphan*/ * leaf_key; } ;
struct TYPE_22__ {TYPE_2__ hdr; TYPE_1__ u; } ;
struct TYPE_21__ {scalar_t__ singleton_first_page; scalar_t__ singleton_npages; scalar_t__ btree_depth; int /*<<< orphan*/  btree_root; } ;
typedef  int Size ;
typedef  TYPE_3__ FreePageManager ;
typedef  int /*<<< orphan*/  FreePageBtreeLeafKey ;
typedef  int /*<<< orphan*/  FreePageBtreeInternalKey ;
typedef  TYPE_4__ FreePageBtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FREE_PAGE_LEAF_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,int) ; 
 int FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_4__*) ; 
 char* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC12(FreePageManager *fpm, FreePageBtree *btp)
{
	char	   *base = FUNC8(fpm);
	FreePageBtree *parent;
	Size		index;
	Size		first_page;

	for (;;)
	{
		/* Find parent page. */
		parent = FUNC10(base, btp->hdr.parent);
		if (parent == NULL)
		{
			/* We are removing the root page. */
			FUNC11(base, fpm->btree_root, (FreePageBtree *) NULL);
			fpm->btree_depth = 0;
			FUNC0(fpm->singleton_first_page == 0);
			FUNC0(fpm->singleton_npages == 0);
			return;
		}

		/*
		 * If the parent contains only one item, we need to remove it as well.
		 */
		if (parent->hdr.nused > 1)
			break;
		FUNC4(fpm, FUNC7(base, btp));
		btp = parent;
	}

	/* Find and remove the downlink. */
	first_page = FUNC3(btp);
	if (parent->hdr.magic == FREE_PAGE_LEAF_MAGIC)
	{
		index = FUNC6(parent, first_page);
		FUNC0(index < parent->hdr.nused);
		if (index < parent->hdr.nused - 1)
			FUNC9(&parent->u.leaf_key[index],
					&parent->u.leaf_key[index + 1],
					sizeof(FreePageBtreeLeafKey)
					* (parent->hdr.nused - index - 1));
	}
	else
	{
		index = FUNC5(parent, first_page);
		FUNC0(index < parent->hdr.nused);
		if (index < parent->hdr.nused - 1)
			FUNC9(&parent->u.internal_key[index],
					&parent->u.internal_key[index + 1],
					sizeof(FreePageBtreeInternalKey)
					* (parent->hdr.nused - index - 1));
	}
	parent->hdr.nused--;
	FUNC0(parent->hdr.nused > 0);

	/* Recycle the page. */
	FUNC4(fpm, FUNC7(base, btp));

	/* Adjust ancestor keys if needed. */
	if (index == 0)
		FUNC1(fpm, parent);

	/* Consider whether to consolidate the parent with a sibling. */
	FUNC2(fpm, parent);
}