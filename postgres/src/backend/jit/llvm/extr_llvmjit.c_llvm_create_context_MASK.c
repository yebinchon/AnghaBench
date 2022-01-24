#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int /*<<< orphan*/  resowner; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
typedef  TYPE_2__ LLVMJitContext ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentResourceOwner ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

LLVMJitContext *
FUNC6(int jitFlags)
{
	LLVMJitContext *context;

	FUNC4();

	FUNC5();

	FUNC2(CurrentResourceOwner);

	context = FUNC0(TopMemoryContext,
									 sizeof(LLVMJitContext));
	context->base.flags = jitFlags;

	/* ensure cleanup */
	context->base.resowner = CurrentResourceOwner;
	FUNC3(CurrentResourceOwner, FUNC1(context));

	return context;
}