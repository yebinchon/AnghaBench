#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ start; scalar_t__ end; } ;
typedef  TYPE_1__ RangeObject ;
typedef  int /*<<< orphan*/  Py_ssize_t ;
typedef  int /*<<< orphan*/  PySliceObject_T ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,long) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC7(PyObject *self, PyObject* idx)
{
    if (FUNC1(idx))
    {
	long _idx = FUNC0(idx);
	return FUNC5((RangeObject *)(self), _idx);
    } else if (FUNC2(idx))
    {
	Py_ssize_t start, stop, step, slicelen;

	if (FUNC3((PySliceObject_T *)idx,
		((RangeObject *)(self))->end-((RangeObject *)(self))->start+1,
		&start, &stop,
		&step, &slicelen) < 0)
	{
	    return NULL;
	}
	return FUNC6((RangeObject *)(self), start, stop);
    }
    else
    {
	FUNC4(idx);
	return NULL;
    }
}