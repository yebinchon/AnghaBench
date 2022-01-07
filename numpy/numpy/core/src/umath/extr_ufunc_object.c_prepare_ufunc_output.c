
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufunc_full_args ;
typedef int PyUFuncObject ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArray_Check (int *) ;
 int PyArray_CompareLists (int ,int ,scalar_t__) ;
 int PyArray_DESCR (int *) ;
 int PyArray_DIMS (int *) ;
 int PyArray_EquivTypes (int ,int ) ;
 scalar_t__ PyArray_NDIM (int *) ;
 int PyArray_STRIDES (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int * PyObject_CallFunction (int *,char*,int *,int *,int *,int) ;
 int Py_DECREF (int *) ;
 int * Py_None ;
 int * _get_wrap_prepare_args (int ) ;

__attribute__((used)) static int
prepare_ufunc_output(PyUFuncObject *ufunc,
                    PyArrayObject **op,
                    PyObject *arr_prep,
                    ufunc_full_args full_args,
                    int i)
{
    if (arr_prep != ((void*)0) && arr_prep != Py_None) {
        PyObject *res;
        PyArrayObject *arr;
        PyObject *args_tup;


        args_tup = _get_wrap_prepare_args(full_args);
        if (args_tup == ((void*)0)) {
            return -1;
        }
        res = PyObject_CallFunction(
            arr_prep, "O(OOi)", *op, ufunc, args_tup, i);
        Py_DECREF(args_tup);

        if (res == ((void*)0)) {
            return -1;
        }
        else if (!PyArray_Check(res)) {
            PyErr_SetString(PyExc_TypeError,
                    "__array_prepare__ must return an "
                    "ndarray or subclass thereof");
            Py_DECREF(res);
            return -1;
        }
        arr = (PyArrayObject *)res;


        if (arr == *op) {
            Py_DECREF(arr);
        }

        else if (PyArray_NDIM(arr) != PyArray_NDIM(*op) ||
                !PyArray_CompareLists(PyArray_DIMS(arr),
                                      PyArray_DIMS(*op),
                                      PyArray_NDIM(arr)) ||
                !PyArray_CompareLists(PyArray_STRIDES(arr),
                                      PyArray_STRIDES(*op),
                                      PyArray_NDIM(arr)) ||
                !PyArray_EquivTypes(PyArray_DESCR(arr),
                                    PyArray_DESCR(*op))) {
            PyErr_SetString(PyExc_TypeError,
                    "__array_prepare__ must return an "
                    "ndarray or subclass thereof which is "
                    "otherwise identical to its input");
            Py_DECREF(arr);
            return -1;
        }

        else {
            Py_DECREF(*op);
            *op = arr;
        }
    }

    return 0;
}
