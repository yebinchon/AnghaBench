#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct varlena {int dummy; } ;
typedef  int /*<<< orphan*/  gbtree_vinfo ;
struct TYPE_6__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  page; int /*<<< orphan*/  rel; int /*<<< orphan*/  key; scalar_t__ leafkey; } ;
typedef  TYPE_1__ GISTENTRY ;
typedef  int /*<<< orphan*/  GBT_VARKEY ;

/* Variables and functions */
 struct varlena* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC4 (int) ; 

GISTENTRY *
FUNC5(GISTENTRY *entry, const gbtree_vinfo *tinfo)
{
	GISTENTRY  *retval;

	if (entry->leafkey)
	{
		struct varlena *leaf = FUNC0(entry->key);
		GBT_VARKEY *r;

		r = FUNC2(leaf);

		retval = FUNC4(sizeof(GISTENTRY));
		FUNC3(*retval, FUNC1(r),
					  entry->rel, entry->page,
					  entry->offset, true);
	}
	else
		retval = entry;

	return retval;
}