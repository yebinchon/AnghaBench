#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ magic; int nused; int /*<<< orphan*/  parent; } ;
struct TYPE_11__ {TYPE_1__* internal_key; } ;
struct TYPE_13__ {TYPE_3__ hdr; TYPE_2__ u; } ;
struct TYPE_10__ {size_t first_page; int /*<<< orphan*/  child; } ;
typedef  size_t Size ;
typedef  TYPE_4__ FreePageBtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ; 
 size_t FUNC1 (TYPE_4__*) ; 
 size_t FUNC2 (TYPE_4__*,size_t) ; 
 TYPE_4__* FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static FreePageBtree *
FUNC4(char *base, FreePageBtree *btp)
{
	FreePageBtree *p = btp;
	int			levels = 0;

	/* Move up until we can move left. */
	for (;;)
	{
		Size		first_page;
		Size		index;

		first_page = FUNC1(p);
		p = FUNC3(base, p->hdr.parent);

		if (p == NULL)
			return NULL;		/* we were passed the rightmost page */

		index = FUNC2(p, first_page);
		if (index > 0)
		{
			FUNC0(p->u.internal_key[index].first_page == first_page);
			p = FUNC3(base, p->u.internal_key[index - 1].child);
			break;
		}
		FUNC0(index == 0);
		++levels;
	}

	/* Descend left. */
	while (levels > 0)
	{
		FUNC0(p->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
		p = FUNC3(base, p->u.internal_key[p->hdr.nused - 1].child);
		--levels;
	}
	FUNC0(p->hdr.magic == btp->hdr.magic);

	return p;
}