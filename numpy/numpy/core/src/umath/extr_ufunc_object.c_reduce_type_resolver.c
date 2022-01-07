
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* type_resolver ) (TYPE_1__*,int ,int **,int *,int **) ;} ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 int NPY_UNSAFE_CASTING ;
 int PyArray_EquivTypes (int *,int *) ;
 int PyErr_Format (int ,char*,char const*) ;
 int PyExc_RuntimeError ;
 int * PyTuple_Pack (int,int *,int *,int ) ;
 int Py_DECREF (int *) ;
 int Py_None ;
 int stub1 (TYPE_1__*,int ,int **,int *,int **) ;
 char* ufunc_get_name_cstr (TYPE_1__*) ;

__attribute__((used)) static int
reduce_type_resolver(PyUFuncObject *ufunc, PyArrayObject *arr,
                        PyArray_Descr *odtype, PyArray_Descr **out_dtype)
{
    int i, retcode;
    PyArrayObject *op[3] = {arr, arr, ((void*)0)};
    PyArray_Descr *dtypes[3] = {((void*)0), ((void*)0), ((void*)0)};
    const char *ufunc_name = ufunc_get_name_cstr(ufunc);
    PyObject *type_tup = ((void*)0);

    *out_dtype = ((void*)0);





    if (odtype != ((void*)0)) {
        type_tup = PyTuple_Pack(3, odtype, odtype, Py_None);
        if (type_tup == ((void*)0)) {
            return -1;
        }
    }


    retcode = ufunc->type_resolver(
                        ufunc, NPY_UNSAFE_CASTING,
                        op, type_tup, dtypes);
    Py_DECREF(type_tup);
    if (retcode == -1) {
        return -1;
    }
    else if (retcode == -2) {
        PyErr_Format(PyExc_RuntimeError,
                "type resolution returned NotImplemented to "
                "reduce ufunc %s", ufunc_name);
        return -1;
    }







    if (!PyArray_EquivTypes(dtypes[0], dtypes[1])) {
        for (i = 0; i < 3; ++i) {
            Py_DECREF(dtypes[i]);
        }
        PyErr_Format(PyExc_RuntimeError,
                "could not find a type resolution appropriate for "
                "reduce ufunc %s", ufunc_name);
        return -1;
    }

    Py_DECREF(dtypes[0]);
    Py_DECREF(dtypes[1]);
    *out_dtype = dtypes[2];

    return 0;
}
