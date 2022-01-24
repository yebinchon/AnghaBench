#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_1__* ob_type; } ;
struct TYPE_19__ {int /*<<< orphan*/  tp_name; } ;
typedef  TYPE_2__ PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 TYPE_2__** FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,TYPE_2__**,TYPE_2__***) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* Py_None ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC8(PyObject *args, PyObject *kwds,
                          PyObject **with_override, PyObject **methods)
{
    int i;
    int num_override_args = 0;
    int narg, nout = 0;
    PyObject *out_kwd_obj;
    PyObject **arg_objs, **out_objs;

    narg = FUNC2(args);
    if (narg < 0) {
        return -1;
    }
    arg_objs = FUNC1(args);

    nout = FUNC4(kwds, &out_kwd_obj, &out_objs);
    if (nout < 0) {
        return -1;
    }

    for (i = 0; i < narg + nout; ++i) {
        PyObject *obj;
        int j;
        int new_class = 1;

        if (i < narg) {
            obj = arg_objs[i];
        }
        else {
            obj = out_objs[i - narg];
        }
        /*
         * Have we seen this class before?  If so, ignore.
         */
        for (j = 0; j < num_override_args; j++) {
            new_class = (FUNC7(obj) != FUNC7(with_override[j]));
            if (!new_class) {
                break;
            }
        }
        if (new_class) {
            /*
             * Now see if the object provides an __array_ufunc__. However, we should
             * ignore the base ndarray.__ufunc__, so we skip any ndarray as well as
             * any ndarray subclass instances that did not override __array_ufunc__.
             */
            PyObject *method = FUNC3(obj);
            if (method == NULL) {
                continue;
            }
            if (method == Py_None) {
                FUNC0(PyExc_TypeError,
                             "operand '%.200s' does not support ufuncs "
                             "(__array_ufunc__=None)",
                             obj->ob_type->tp_name);
                FUNC5(method);
                goto fail;
            }
            FUNC6(obj);
            with_override[num_override_args] = obj;
            methods[num_override_args] = method;
            ++num_override_args;
        }
    }
    FUNC5(out_kwd_obj);
    return num_override_args;

fail:
    for (i = 0; i < num_override_args; i++) {
        FUNC5(with_override[i]);
        FUNC5(methods[i]);
    }
    FUNC5(out_kwd_obj);
    return -1;
}