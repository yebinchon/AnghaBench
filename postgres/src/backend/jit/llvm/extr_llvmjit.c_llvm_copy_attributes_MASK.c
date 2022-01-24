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
typedef  int /*<<< orphan*/  LLVMAttributeRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LLVMAttributeFunctionIndex ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

void
FUNC4(LLVMValueRef v_from, LLVMValueRef v_to)
{
	int			num_attributes;
	int			attno;
	LLVMAttributeRef *attrs;

	num_attributes =
		FUNC1(v_from, LLVMAttributeFunctionIndex);

	attrs = FUNC3(sizeof(LLVMAttributeRef) * num_attributes);
	FUNC2(v_from, LLVMAttributeFunctionIndex, attrs);

	for (attno = 0; attno < num_attributes; attno++)
	{
		FUNC0(v_to, LLVMAttributeFunctionIndex,
								attrs[attno]);
	}
}