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
typedef  scalar_t__ npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 scalar_t__ INT_MIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 

__attribute__((used)) static int
FUNC2(PyObject *o, const char * msg)
{
    npy_intp long_value;
    /* This assumes that NPY_SIZEOF_INTP >= NPY_SIZEOF_INT */
    long_value = FUNC0(o, msg);

#if (NPY_SIZEOF_INTP > NPY_SIZEOF_INT)
    if ((long_value < INT_MIN) || (long_value > INT_MAX)) {
        PyErr_SetString(PyExc_ValueError, "integer won't fit into a C int");
        return -1;
    }
#endif
    return (int) long_value;
}