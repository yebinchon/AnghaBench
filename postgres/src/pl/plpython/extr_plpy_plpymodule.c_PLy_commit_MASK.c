#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * scratch_ctx; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PLyExecutionContext ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static PyObject *
FUNC3(PyObject *self, PyObject *args)
{
	PLyExecutionContext *exec_ctx = FUNC0();

	FUNC1();
	FUNC2();

	/* was cleared at transaction end, reset pointer */
	exec_ctx->scratch_ctx = NULL;

	Py_RETURN_NONE;
}