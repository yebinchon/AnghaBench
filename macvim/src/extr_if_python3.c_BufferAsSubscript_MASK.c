#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* buf; } ;
struct TYPE_7__ {scalar_t__ ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PySliceObject_T ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyInt ;
typedef  TYPE_3__ BufferObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,long,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Py_ssize_t
FUNC8(PyObject *self, PyObject* idx, PyObject* val)
{
    if (FUNC2(idx))
    {
	long n = FUNC1(idx);
	return FUNC6((BufferObject *)(self), n, val, 1,
		    (Py_ssize_t)((BufferObject *)(self))->buf->b_ml.ml_line_count,
		    NULL);
    } else if (FUNC3(idx))
    {
	Py_ssize_t start, stop, step, slicelen;

	if (FUNC0((BufferObject *) self))
	    return -1;

	if (FUNC4((PySliceObject_T *)idx,
	      (Py_ssize_t)((BufferObject *)(self))->buf->b_ml.ml_line_count,
	      &start, &stop,
	      &step, &slicelen) < 0)
	{
	    return -1;
	}
	return FUNC7((BufferObject *)(self), start, stop, val, 1,
			  (PyInt)((BufferObject *)(self))->buf->b_ml.ml_line_count,
			  NULL);
    }
    else
    {
	FUNC5(idx);
	return -1;
    }
}