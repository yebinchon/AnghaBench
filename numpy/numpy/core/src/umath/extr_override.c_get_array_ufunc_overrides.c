
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {TYPE_1__* ob_type; } ;
struct TYPE_19__ {int tp_name; } ;
typedef TYPE_2__ PyObject ;


 int PyErr_Format (int ,char*,int ) ;
 int PyExc_TypeError ;
 TYPE_2__** PySequence_Fast_ITEMS (TYPE_2__*) ;
 int PyTuple_Size (TYPE_2__*) ;
 TYPE_2__* PyUFuncOverride_GetNonDefaultArrayUfunc (TYPE_2__*) ;
 int PyUFuncOverride_GetOutObjects (TYPE_2__*,TYPE_2__**,TYPE_2__***) ;
 int Py_DECREF (TYPE_2__*) ;
 int Py_INCREF (TYPE_2__*) ;
 TYPE_2__* Py_None ;
 scalar_t__ Py_TYPE (TYPE_2__*) ;

__attribute__((used)) static int
get_array_ufunc_overrides(PyObject *args, PyObject *kwds,
                          PyObject **with_override, PyObject **methods)
{
    int i;
    int num_override_args = 0;
    int narg, nout = 0;
    PyObject *out_kwd_obj;
    PyObject **arg_objs, **out_objs;

    narg = PyTuple_Size(args);
    if (narg < 0) {
        return -1;
    }
    arg_objs = PySequence_Fast_ITEMS(args);

    nout = PyUFuncOverride_GetOutObjects(kwds, &out_kwd_obj, &out_objs);
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



        for (j = 0; j < num_override_args; j++) {
            new_class = (Py_TYPE(obj) != Py_TYPE(with_override[j]));
            if (!new_class) {
                break;
            }
        }
        if (new_class) {





            PyObject *method = PyUFuncOverride_GetNonDefaultArrayUfunc(obj);
            if (method == ((void*)0)) {
                continue;
            }
            if (method == Py_None) {
                PyErr_Format(PyExc_TypeError,
                             "operand '%.200s' does not support ufuncs "
                             "(__array_ufunc__=None)",
                             obj->ob_type->tp_name);
                Py_DECREF(method);
                goto fail;
            }
            Py_INCREF(obj);
            with_override[num_override_args] = obj;
            methods[num_override_args] = method;
            ++num_override_args;
        }
    }
    Py_DECREF(out_kwd_obj);
    return num_override_args;

fail:
    for (i = 0; i < num_override_args; i++) {
        Py_DECREF(with_override[i]);
        Py_DECREF(methods[i]);
    }
    Py_DECREF(out_kwd_obj);
    return -1;
}
