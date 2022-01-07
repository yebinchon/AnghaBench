
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PySequence_Fast (int *,char*) ;
 int ** PySequence_Fast_ITEMS (int *) ;
 int PyTuple_Size (int *) ;
 int PyUFuncOverride_GetOutObjects (int *,int **,int ***) ;
 scalar_t__ PyUFunc_HasOverride (int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static int
any_array_ufunc_overrides(PyObject *args, PyObject *kwds)
{
    int i;
    int nin, nout;
    PyObject *out_kwd_obj;
    PyObject *fast;
    PyObject **in_objs, **out_objs;


    nin = PyTuple_Size(args);
    if (nin < 0) {
        return -1;
    }
    fast = PySequence_Fast(args, "Could not convert object to sequence");
    if (fast == ((void*)0)) {
        return -1;
    }
    in_objs = PySequence_Fast_ITEMS(fast);
    for (i = 0; i < nin; ++i) {
        if (PyUFunc_HasOverride(in_objs[i])) {
            Py_DECREF(fast);
            return 1;
        }
    }
    Py_DECREF(fast);

    nout = PyUFuncOverride_GetOutObjects(kwds, &out_kwd_obj, &out_objs);
    if (nout < 0) {
        return -1;
    }
    for (i = 0; i < nout; i++) {
        if (PyUFunc_HasOverride(out_objs[i])) {
            Py_DECREF(out_kwd_obj);
            return 1;
        }
    }
    Py_DECREF(out_kwd_obj);
    return 0;
}
