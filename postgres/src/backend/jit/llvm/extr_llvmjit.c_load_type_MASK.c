#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  LLVMValueRef ;
typedef  int /*<<< orphan*/ * LLVMTypeRef ;
typedef  int /*<<< orphan*/  LLVMModuleRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static LLVMTypeRef
FUNC5(LLVMModuleRef mod, const char *name)
{
	LLVMValueRef value;
	LLVMTypeRef typ;

	/* this'll return a *pointer* to the global */
	value = FUNC2(mod, name);
	if (!value)
		FUNC4(ERROR, "type %s is unknown", name);

	/* therefore look at the contained type and return that */
	typ = FUNC3(value);
	FUNC0(typ != NULL);
	typ = FUNC1(typ);
	FUNC0(typ != NULL);
	return typ;
}