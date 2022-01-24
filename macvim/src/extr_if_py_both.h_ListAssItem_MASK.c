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
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PySliceObject_T ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  ListObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Py_ssize_t
FUNC10(ListObject *self, PyObject *idx, PyObject *obj)
{
#if PY_MAJOR_VERSION < 3
    if (FUNC4(idx))
    {
	long _idx = FUNC3(idx);
	return FUNC0(self, _idx, obj);
    }
    else
#endif
    if (FUNC6(idx))
    {
	long _idx = FUNC5(idx);
	return FUNC0(self, _idx, obj);
    }
    else if (FUNC7(idx))
    {
	Py_ssize_t start, stop, step, slicelen;

	if (FUNC8((PySliceObject_T *)idx, FUNC2(self),
				 &start, &stop, &step, &slicelen) < 0)
	    return -1;
	return FUNC1(self, start, step, slicelen,
		obj);
    }
    else
    {
	FUNC9(idx);
	return -1;
    }
}