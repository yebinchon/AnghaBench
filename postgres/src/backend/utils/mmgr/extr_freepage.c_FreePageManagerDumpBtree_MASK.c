#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {size_t relptr_off; } ;
struct TYPE_14__ {TYPE_3__* internal_key; TYPE_1__* leaf_key; } ;
struct TYPE_12__ {scalar_t__ magic; size_t nused; TYPE_7__ parent; } ;
struct TYPE_15__ {TYPE_4__ u; TYPE_2__ hdr; } ;
struct TYPE_13__ {size_t first_page; TYPE_7__ child; } ;
struct TYPE_11__ {size_t first_page; size_t npages; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  size_t Size ;
typedef  int /*<<< orphan*/  FreePageManager ;
typedef  TYPE_5__ FreePageBtree ;

/* Variables and functions */
 size_t FPM_PAGE_SIZE ; 
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t FUNC3 (char*,TYPE_5__*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC5 (char*,TYPE_7__) ; 

__attribute__((used)) static void
FUNC6(FreePageManager *fpm, FreePageBtree *btp,
						 FreePageBtree *parent, int level, StringInfo buf)
{
	char	   *base = FUNC4(fpm);
	Size		pageno = FUNC3(base, btp);
	Size		index;
	FreePageBtree *check_parent;

	FUNC2();
	check_parent = FUNC5(base, btp->hdr.parent);
	FUNC0(buf, "  %zu@%d %c", pageno, level,
					 btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC ? 'i' : 'l');
	if (parent != check_parent)
		FUNC0(buf, " [actual parent %zu, expected %zu]",
						 FUNC3(base, check_parent),
						 FUNC3(base, parent));
	FUNC1(buf, ':');
	for (index = 0; index < btp->hdr.nused; ++index)
	{
		if (btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC)
			FUNC0(buf, " %zu->%zu",
							 btp->u.internal_key[index].first_page,
							 btp->u.internal_key[index].child.relptr_off / FPM_PAGE_SIZE);
		else
			FUNC0(buf, " %zu(%zu)",
							 btp->u.leaf_key[index].first_page,
							 btp->u.leaf_key[index].npages);
	}
	FUNC1(buf, '\n');

	if (btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC)
	{
		for (index = 0; index < btp->hdr.nused; ++index)
		{
			FreePageBtree *child;

			child = FUNC5(base, btp->u.internal_key[index].child);
			FUNC6(fpm, child, btp, level + 1, buf);
		}
	}
}