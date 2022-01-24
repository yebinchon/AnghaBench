#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int elsize; int /*<<< orphan*/ * fields; int /*<<< orphan*/ * names; } ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,TYPE_1__**,int*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(PyArray_Descr *dtype)
{
    PyObject *names, *fields, *key, *tup, *title;
    Py_ssize_t i, j, names_size;
    PyArray_Descr *fld_dtype, *fld2_dtype;
    int fld_offset, fld2_offset;

    /* Get some properties from the dtype */
    names = dtype->names;
    names_size = FUNC5(names);
    fields = dtype->fields;

    for (i = 0; i < names_size; ++i) {
        key = FUNC4(names, i);
        if (key == NULL) {
            return -1;
        }
        tup = FUNC2(fields, key);
        if (tup == NULL) {
            return -1;
        }
        if (!FUNC0(tup, "Oi|O", &fld_dtype, &fld_offset, &title)) {
            return -1;
        }

        /* If this field has objects, check for overlaps */
        if (FUNC1(fld_dtype)) {
            for (j = 0; j < names_size; ++j) {
                if (i != j) {
                    key = FUNC4(names, j);
                    if (key == NULL) {
                        return -1;
                    }
                    tup = FUNC2(fields, key);
                    if (tup == NULL) {
                        return -1;
                    }
                    if (!FUNC0(tup, "Oi|O", &fld2_dtype,
                                                &fld2_offset, &title)) {
                        return -1;
                    }
                    /* Raise an exception if it overlaps */
                    if (fld_offset < fld2_offset + fld2_dtype->elsize &&
                                fld2_offset < fld_offset + fld_dtype->elsize) {
                        FUNC3(PyExc_TypeError,
                                "Cannot create a NumPy dtype with overlapping "
                                "object fields");
                        return -1;
                    }
                }
            }
        }
    }

    /* It passed all the overlap tests */
    return 0;
}