#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ magic; size_t nused; int /*<<< orphan*/  parent; } ;
struct TYPE_9__ {TYPE_1__* internal_key; } ;
struct TYPE_11__ {TYPE_3__ hdr; TYPE_2__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  child; } ;
typedef  size_t Size ;
typedef  TYPE_4__ FreePageBtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ; 
 TYPE_4__* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC3(char *base, FreePageBtree *btp)
{
	Size		i;

	FUNC0(btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
	for (i = 0; i < btp->hdr.nused; ++i)
	{
		FreePageBtree *child;

		child = FUNC1(base, btp->u.internal_key[i].child);
		FUNC2(base, child->hdr.parent, btp);
	}
}