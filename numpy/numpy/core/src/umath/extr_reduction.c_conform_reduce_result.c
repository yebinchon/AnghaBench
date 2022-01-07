
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef scalar_t__ npy_bool ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject_fields ;
typedef int PyArrayObject ;


 int NPY_ANYORDER ;
 int NPY_MAXDIMS ;
 scalar_t__ PyArray_CopyInto (int *,int *) ;
 int PyArray_DATA (int *) ;
 int * PyArray_DESCR (int *) ;
 int* PyArray_DIMS (int *) ;
 int PyArray_FLAGS (int *) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_NewFromDescr (int *,int *,int,int*,int*,int ,int ,int *) ;
 scalar_t__ PyArray_NewLikeArray (int *,int ,int *,int ) ;
 int* PyArray_STRIDES (int *) ;
 scalar_t__ PyArray_SetBaseObject (int *,int *) ;
 scalar_t__ PyArray_SetWritebackIfCopyBase (int *,int *) ;
 int PyArray_Type ;
 int PyErr_Format (int ,char*,char const*) ;
 int PyExc_ValueError ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static PyArrayObject *
conform_reduce_result(int ndim, const npy_bool *axis_flags,
                      PyArrayObject *out, int keepdims, const char *funcname,
                      int need_copy)
{
    npy_intp strides[NPY_MAXDIMS], shape[NPY_MAXDIMS];
    npy_intp *strides_out = PyArray_STRIDES(out);
    npy_intp *shape_out = PyArray_DIMS(out);
    int idim, idim_out, ndim_out = PyArray_NDIM(out);
    PyArray_Descr *dtype;
    PyArrayObject_fields *ret;





    if (keepdims) {
        if (PyArray_NDIM(out) != ndim) {
            PyErr_Format(PyExc_ValueError,
                    "output parameter for reduction operation %s "
                    "has the wrong number of dimensions (must match "
                    "the operand's when keepdims=True)", funcname);
            return ((void*)0);
        }

        for (idim = 0; idim < ndim; ++idim) {
            if (axis_flags[idim]) {
                if (shape_out[idim] != 1) {
                    PyErr_Format(PyExc_ValueError,
                            "output parameter for reduction operation %s "
                            "has a reduction dimension not equal to one "
                            "(required when keepdims=True)", funcname);
                    return ((void*)0);
                }
            }
        }

        Py_INCREF(out);
        return out;
    }


    idim_out = 0;
    for (idim = 0; idim < ndim; ++idim) {
        if (axis_flags[idim]) {
            strides[idim] = 0;
            shape[idim] = 1;
        }
        else {
            if (idim_out >= ndim_out) {
                PyErr_Format(PyExc_ValueError,
                        "output parameter for reduction operation %s "
                        "does not have enough dimensions", funcname);
                return ((void*)0);
            }
            strides[idim] = strides_out[idim_out];
            shape[idim] = shape_out[idim_out];
            ++idim_out;
        }
    }

    if (idim_out != ndim_out) {
        PyErr_Format(PyExc_ValueError,
                "output parameter for reduction operation %s "
                "has too many dimensions", funcname);
        return ((void*)0);
    }


    dtype = PyArray_DESCR(out);
    Py_INCREF(dtype);




    ret = (PyArrayObject_fields *)PyArray_NewFromDescr(
            &PyArray_Type, dtype,
            ndim, shape, strides, PyArray_DATA(out),
            PyArray_FLAGS(out), ((void*)0));
    if (ret == ((void*)0)) {
        return ((void*)0);
    }

    Py_INCREF(out);
    if (PyArray_SetBaseObject((PyArrayObject *)ret, (PyObject *)out) < 0) {
        Py_DECREF(ret);
        return ((void*)0);
    }

    if (need_copy) {
        PyArrayObject *ret_copy;

        ret_copy = (PyArrayObject *)PyArray_NewLikeArray(
            (PyArrayObject *)ret, NPY_ANYORDER, ((void*)0), 0);
        if (ret_copy == ((void*)0)) {
            Py_DECREF(ret);
            return ((void*)0);
        }

        if (PyArray_CopyInto(ret_copy, (PyArrayObject *)ret) != 0) {
            Py_DECREF(ret);
            Py_DECREF(ret_copy);
            return ((void*)0);
        }

        if (PyArray_SetWritebackIfCopyBase(ret_copy, (PyArrayObject *)ret) < 0) {
            Py_DECREF(ret);
            Py_DECREF(ret_copy);
            return ((void*)0);
        }

        return ret_copy;
    }
    else {
        return (PyArrayObject *)ret;
    }
}
