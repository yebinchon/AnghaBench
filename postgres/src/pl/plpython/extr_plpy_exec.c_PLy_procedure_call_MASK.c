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
struct TYPE_3__ {int /*<<< orphan*/  globals; int /*<<< orphan*/ * code; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyCodeObject ;
typedef  TYPE_1__ PLyProcedure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int volatile) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  explicit_subtransactions ; 
 int volatile FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC9(PLyProcedure *proc, const char *kargs, PyObject *vargs)
{
	PyObject   *rv = NULL;
	int volatile save_subxact_level = FUNC8(explicit_subtransactions);

	FUNC6(proc->globals, kargs, vargs);

	FUNC3();
	{
#if PY_VERSION_HEX >= 0x03020000
		rv = PyEval_EvalCode(proc->code,
							 proc->globals, proc->globals);
#else
		rv = FUNC7((PyCodeObject *) proc->code,
							 proc->globals, proc->globals);
#endif

		/*
		 * Since plpy will only let you close subtransactions that you
		 * started, you cannot *unnest* subtransactions, only *nest* them
		 * without closing.
		 */
		FUNC0(FUNC8(explicit_subtransactions) >= save_subxact_level);
	}
	FUNC2();
	{
		FUNC4(save_subxact_level);
	}
	FUNC1();

	/* If the Python code returned an error, propagate it */
	if (rv == NULL)
		FUNC5(ERROR, NULL);

	return rv;
}