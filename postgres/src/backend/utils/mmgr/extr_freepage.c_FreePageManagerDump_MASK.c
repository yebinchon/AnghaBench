#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  relptr_off; } ;
struct TYPE_15__ {size_t btree_depth; int /*<<< orphan*/ * freelist; int /*<<< orphan*/  btree_recycle; int /*<<< orphan*/  singleton_npages; int /*<<< orphan*/  singleton_first_page; int /*<<< orphan*/  btree_root; int /*<<< orphan*/  contiguous_pages; TYPE_1__ self; } ;
struct TYPE_14__ {char* data; } ;
typedef  TYPE_2__ StringInfoData ;
typedef  size_t Size ;
typedef  int /*<<< orphan*/  FreePageSpanLeader ;
typedef  TYPE_3__ FreePageManager ;
typedef  int /*<<< orphan*/  FreePageBtree ;

/* Variables and functions */
 size_t FPM_NUM_FREELISTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 char* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 void* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

char *
FUNC8(FreePageManager *fpm)
{
	char	   *base = FUNC4(fpm);
	StringInfoData buf;
	FreePageSpanLeader *recycle;
	bool		dumped_any_freelist = false;
	Size		f;

	/* Initialize output buffer. */
	FUNC5(&buf);

	/* Dump general stuff. */
	FUNC2(&buf, "metadata: self %zu max contiguous pages = %zu\n",
					 fpm->self.relptr_off, fpm->contiguous_pages);

	/* Dump btree. */
	if (fpm->btree_depth > 0)
	{
		FreePageBtree *root;

		FUNC2(&buf, "btree depth %u:\n", fpm->btree_depth);
		root = FUNC6(base, fpm->btree_root);
		FUNC0(fpm, root, NULL, 0, &buf);
	}
	else if (fpm->singleton_npages > 0)
	{
		FUNC2(&buf, "singleton: %zu(%zu)\n",
						 fpm->singleton_first_page, fpm->singleton_npages);
	}

	/* Dump btree recycle list. */
	recycle = FUNC6(base, fpm->btree_recycle);
	if (recycle != NULL)
	{
		FUNC3(&buf, "btree recycle:");
		FUNC1(fpm, recycle, 1, &buf);
	}

	/* Dump free lists. */
	for (f = 0; f < FPM_NUM_FREELISTS; ++f)
	{
		FreePageSpanLeader *span;

		if (FUNC7(fpm->freelist[f]))
			continue;
		if (!dumped_any_freelist)
		{
			FUNC3(&buf, "freelists:\n");
			dumped_any_freelist = true;
		}
		FUNC2(&buf, "  %zu:", f + 1);
		span = FUNC6(base, fpm->freelist[f]);
		FUNC1(fpm, span, f + 1, &buf);
	}

	/* And return result to caller. */
	return buf.data;
}