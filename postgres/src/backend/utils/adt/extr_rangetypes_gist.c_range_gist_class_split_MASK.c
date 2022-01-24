#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TypeCacheEntry ;
struct TYPE_8__ {void* spl_rdatum; void* spl_ldatum; scalar_t__ spl_nright; scalar_t__ spl_nleft; } ;
struct TYPE_7__ {size_t n; TYPE_1__* vector; } ;
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
typedef  scalar_t__ SplitLR ;
typedef  int /*<<< orphan*/  RangeType ;
typedef  size_t OffsetNumber ;
typedef  TYPE_2__ GistEntryVector ;
typedef  TYPE_3__ GIST_SPLITVEC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FirstOffsetNumber ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ SPLIT_LEFT ; 
 scalar_t__ SPLIT_RIGHT ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(TypeCacheEntry *typcache,
					   GistEntryVector *entryvec,
					   GIST_SPLITVEC *v,
					   SplitLR *classes_groups)
{
	RangeType  *left_range = NULL;
	RangeType  *right_range = NULL;
	OffsetNumber i,
				maxoff;

	maxoff = entryvec->n - 1;

	v->spl_nleft = 0;
	v->spl_nright = 0;
	for (i = FirstOffsetNumber; i <= maxoff; i = FUNC2(i))
	{
		RangeType  *range = FUNC1(entryvec->vector[i].key);
		int			class;

		/* Get class of range */
		class = FUNC6(range);

		/* Place range to appropriate page */
		if (classes_groups[class] == SPLIT_LEFT)
			FUNC3(range, i);
		else
		{
			FUNC0(classes_groups[class] == SPLIT_RIGHT);
			FUNC4(range, i);
		}
	}

	v->spl_ldatum = FUNC5(left_range);
	v->spl_rdatum = FUNC5(right_range);
}