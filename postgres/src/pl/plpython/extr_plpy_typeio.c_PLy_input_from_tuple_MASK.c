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
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PLyExecutionContext ;
typedef  int /*<<< orphan*/  PLyDatumToOb ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

PyObject *
FUNC5(PLyDatumToOb *arg, HeapTuple tuple, TupleDesc desc, bool include_generated)
{
	PyObject   *dict;
	PLyExecutionContext *exec_ctx = FUNC3();
	MemoryContext scratch_context = FUNC4(exec_ctx);
	MemoryContext oldcontext;

	/*
	 * As in PLy_input_convert, do the work in the scratch context.
	 */
	FUNC0(scratch_context);

	oldcontext = FUNC1(scratch_context);

	dict = FUNC2(arg, tuple, desc, include_generated);

	FUNC1(oldcontext);

	return dict;
}