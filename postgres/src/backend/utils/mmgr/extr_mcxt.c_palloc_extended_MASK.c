#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int isReset; int /*<<< orphan*/  name; TYPE_1__* methods; } ;
struct TYPE_8__ {void* (* alloc ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_2__* MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int MCXT_ALLOC_HUGE ; 
 int MCXT_ALLOC_NO_OOM ; 
 int MCXT_ALLOC_ZERO ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 void* FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

void *
FUNC15(Size size, int flags)
{
	/* duplicates MemoryContextAllocExtended to avoid increased overhead */
	void	   *ret;
	MemoryContext context = CurrentMemoryContext;

	FUNC2(FUNC5(context));
	FUNC3(context);

	if (((flags & MCXT_ALLOC_HUGE) != 0 && !FUNC0(size)) ||
		((flags & MCXT_ALLOC_HUGE) == 0 && !FUNC1(size)))
		FUNC8(ERROR, "invalid memory alloc request size %zu", size);

	context->isReset = false;

	ret = context->methods->alloc(context, size);
	if (FUNC14(ret == NULL))
	{
		if ((flags & MCXT_ALLOC_NO_OOM) == 0)
		{
			FUNC6(TopMemoryContext);
			FUNC9(ERROR,
					(FUNC10(ERRCODE_OUT_OF_MEMORY),
					 FUNC12("out of memory"),
					 FUNC11("Failed on request of size %zu in memory context \"%s\".",
							   size, context->name)));
		}
		return NULL;
	}

	FUNC7(context, ret, size);

	if ((flags & MCXT_ALLOC_ZERO) != 0)
		FUNC4(ret, 0, size);

	return ret;
}