#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
typedef  TYPE_1__ RangeObject ;
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PySliceObject_T ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Py_ssize_t
FUNC7(PyObject *self, PyObject *idx, PyObject *val)
{
    if (FUNC1(idx))
    {
	long n = FUNC0(idx);
	return FUNC5(self, n, val);
    } else if (FUNC2(idx))
    {
	Py_ssize_t start, stop, step, slicelen;

	if (FUNC3((PySliceObject_T *)idx,
		((RangeObject *)(self))->end-((RangeObject *)(self))->start+1,
		&start, &stop,
		&step, &slicelen) < 0)
	{
	    return -1;
	}
	return FUNC6(self, start, stop, val);
    }
    else
    {
	FUNC4(idx);
	return -1;
    }
}