
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_2__ {int nd; int * strides; int * dimensions; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayObject_fields ;
typedef int PyArrayObject ;


 int NPY_ARRAY_C_CONTIGUOUS ;
 int NPY_ARRAY_F_CONTIGUOUS ;
 scalar_t__ PyArray_DATA (int *) ;
 int * PyArray_DIMS (int *) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_Reshape (int *,int *) ;
 int * PyArray_STRIDES (int *) ;
 int PyArray_UpdateFlags (int *,int) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int PyExc_MemoryError ;
 int Py_DECREF (int *) ;
 int memcpy (int *,int *,int) ;
 int * npy_alloc_cache_dim (int) ;
 int npy_free_cache_dim_array (int *) ;

__attribute__((used)) static int
array_shape_set(PyArrayObject *self, PyObject *val)
{
    int nd;
    PyArrayObject *ret;

    if (val == ((void*)0)) {
        PyErr_SetString(PyExc_AttributeError,
                "Cannot delete array shape");
        return -1;
    }

    ret = (PyArrayObject *)PyArray_Reshape(self, val);
    if (ret == ((void*)0)) {
        return -1;
    }
    if (PyArray_DATA(ret) != PyArray_DATA(self)) {
        Py_DECREF(ret);
        PyErr_SetString(PyExc_AttributeError,
                        "incompatible shape for a non-contiguous " "array");

        return -1;
    }


    npy_free_cache_dim_array(self);
    nd = PyArray_NDIM(ret);
    ((PyArrayObject_fields *)self)->nd = nd;
    if (nd > 0) {

        ((PyArrayObject_fields *)self)->dimensions = npy_alloc_cache_dim(2 * nd);
        if (PyArray_DIMS(self) == ((void*)0)) {
            Py_DECREF(ret);
            PyErr_SetString(PyExc_MemoryError,"");
            return -1;
        }
        ((PyArrayObject_fields *)self)->strides = PyArray_DIMS(self) + nd;
        if (nd) {
            memcpy(PyArray_DIMS(self), PyArray_DIMS(ret), nd*sizeof(npy_intp));
            memcpy(PyArray_STRIDES(self), PyArray_STRIDES(ret), nd*sizeof(npy_intp));
        }
    }
    else {
        ((PyArrayObject_fields *)self)->dimensions = ((void*)0);
        ((PyArrayObject_fields *)self)->strides = ((void*)0);
    }
    Py_DECREF(ret);
    PyArray_UpdateFlags(self, NPY_ARRAY_C_CONTIGUOUS | NPY_ARRAY_F_CONTIGUOUS);
    return 0;
}
