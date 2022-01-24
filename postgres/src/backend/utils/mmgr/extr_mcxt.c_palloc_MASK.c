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
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 void* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

void *
FUNC13(Size size)
{
	/* duplicates MemoryContextAlloc to avoid increased overhead */
	void	   *ret;
	MemoryContext context = CurrentMemoryContext;

	FUNC1(FUNC3(context));
	FUNC2(context);

	if (!FUNC0(size))
		FUNC6(ERROR, "invalid memory alloc request size %zu", size);

	context->isReset = false;

	ret = context->methods->alloc(context, size);
	if (FUNC12(ret == NULL))
	{
		FUNC4(TopMemoryContext);
		FUNC7(ERROR,
				(FUNC8(ERRCODE_OUT_OF_MEMORY),
				 FUNC10("out of memory"),
				 FUNC9("Failed on request of size %zu in memory context \"%s\".",
						   size, context->name)));
	}

	FUNC5(context, ret, size);

	return ret;
}