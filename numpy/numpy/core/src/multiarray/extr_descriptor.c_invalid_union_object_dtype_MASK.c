#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char kind; int /*<<< orphan*/  fields; int /*<<< orphan*/ * names; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(PyArray_Descr *new, PyArray_Descr *conv)
{
    PyObject *name, *tup;
    PyArray_Descr *dtype;

    if (!FUNC1(new) && !FUNC1(conv)) {
        return 0;
    }
    if (FUNC0(new) || new->kind != 'O') {
        goto fail;
    }
    if (!FUNC0(conv) || FUNC5(conv->names) != 1) {
        goto fail;
    }
    name = FUNC4(conv->names, 0);
    if (name == NULL) {
        return -1;
    }
    tup = FUNC2(conv->fields, name);
    if (tup == NULL) {
        return -1;
    }
    dtype = (PyArray_Descr *)FUNC4(tup, 0);
    if (dtype == NULL) {
        return -1;
    }
    if (dtype->kind != 'O') {
        goto fail;
    }
    return 0;

fail:
    FUNC3(PyExc_ValueError,
            "dtypes of the form (old_dtype, new_dtype) containing the object "
            "dtype are not supported");
    return -1;
}