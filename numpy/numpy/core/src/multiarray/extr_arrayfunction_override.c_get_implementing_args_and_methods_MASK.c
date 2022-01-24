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
typedef  size_t Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int NPY_MAXARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(PyObject *relevant_args,
                                  PyObject **implementing_args,
                                  PyObject **methods)
{
    int num_implementing_args = 0;
    Py_ssize_t i;
    int j;

    PyObject **items = FUNC3(relevant_args);
    Py_ssize_t length = FUNC2(relevant_args);

    for (i = 0; i < length; i++) {
        int new_class = 1;
        PyObject *argument = items[i];

        /* Have we seen this type before? */
        for (j = 0; j < num_implementing_args; j++) {
            if (FUNC6(argument) == FUNC6(implementing_args[j])) {
                new_class = 0;
                break;
            }
        }
        if (new_class) {
            PyObject *method = FUNC7(argument);

            if (method != NULL) {
                int arg_index;

                if (num_implementing_args >= NPY_MAXARGS) {
                    FUNC0(
                        PyExc_TypeError,
                        "maximum number (%d) of distinct argument types " \
                        "implementing __array_function__ exceeded",
                        NPY_MAXARGS);
                    FUNC4(method);
                    goto fail;
                }

                /* "subclasses before superclasses, otherwise left to right" */
                arg_index = num_implementing_args;
                for (j = 0; j < num_implementing_args; j++) {
                    PyObject *other_type;
                    other_type = (PyObject *)FUNC6(implementing_args[j]);
                    if (FUNC1(argument, other_type)) {
                        arg_index = j;
                        break;
                    }
                }
                FUNC5(argument);
                FUNC8(implementing_args, num_implementing_args,
                                      arg_index, argument);
                FUNC8(methods, num_implementing_args,
                                      arg_index, method);
                ++num_implementing_args;
            }
        }
    }
    return num_implementing_args;

fail:
    for (j = 0; j < num_implementing_args; j++) {
        FUNC4(implementing_args[j]);
        FUNC4(methods[j]);
    }
    return -1;
}