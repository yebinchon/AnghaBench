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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,size_t,int) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 size_t FUNC15 (char*) ; 

char *
FUNC16(PyObject *plrv)
{
	PyObject   *plrv_bo;
	char	   *plrv_sc;
	size_t		plen;
	size_t		slen;

	if (FUNC7(plrv))
		plrv_bo = FUNC0(plrv);
	else if (FUNC4(plrv))
	{
		/* use repr() for floats, str() is lossy */
#if PY_MAJOR_VERSION >= 3
		PyObject   *s = PyObject_Repr(plrv);

		plrv_bo = PLyUnicode_Bytes(s);
		Py_XDECREF(s);
#else
		plrv_bo = FUNC5(plrv);
#endif
	}
	else
	{
#if PY_MAJOR_VERSION >= 3
		PyObject   *s = PyObject_Str(plrv);

		plrv_bo = PLyUnicode_Bytes(s);
		Py_XDECREF(s);
#else
		plrv_bo = FUNC6(plrv);
#endif
	}
	if (!plrv_bo)
		FUNC1(ERROR, "could not create string representation of Python object");

	plrv_sc = FUNC14(FUNC2(plrv_bo));
	plen = FUNC3(plrv_bo);
	slen = FUNC15(plrv_sc);

	FUNC8(plrv_bo);

	if (slen < plen)
		FUNC10(ERROR,
				(FUNC11(ERRCODE_DATATYPE_MISMATCH),
				 FUNC12("could not convert Python object into cstring: Python string representation appears to contain null bytes")));
	else if (slen > plen)
		FUNC9(ERROR, "could not convert Python object into cstring: Python string longer than reported length");
	FUNC13(plrv_sc, slen, false);

	return plrv_sc;
}