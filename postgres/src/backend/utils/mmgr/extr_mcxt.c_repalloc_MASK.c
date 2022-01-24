#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; TYPE_1__* methods; int /*<<< orphan*/  isReset; } ;
struct TYPE_7__ {void* (* realloc ) (TYPE_2__*,void*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_2__* MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_2__* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 void* FUNC11 (TYPE_2__*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

void *
FUNC13(void *pointer, Size size)
{
	MemoryContext context = FUNC3(pointer);
	void	   *ret;

	if (!FUNC0(size))
		FUNC6(ERROR, "invalid memory alloc request size %zu", size);

	FUNC2(context);

	/* isReset must be false already */
	FUNC1(!context->isReset);

	ret = context->methods->realloc(context, pointer, size);
	if (FUNC12(ret == NULL))
	{
		FUNC4(TopMemoryContext);
		FUNC7(ERROR,
				(FUNC8(ERRCODE_OUT_OF_MEMORY),
				 FUNC10("out of memory"),
				 FUNC9("Failed on request of size %zu in memory context \"%s\".",
						   size, context->name)));
	}

	FUNC5(context, pointer, ret, size);

	return ret;
}