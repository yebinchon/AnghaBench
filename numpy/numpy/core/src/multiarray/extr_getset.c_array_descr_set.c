
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_33__ {int* dimensions; int nd; int* strides; TYPE_1__* descr; } ;
struct TYPE_32__ {scalar_t__ type_num; int elsize; } ;
typedef TYPE_1__ PyObject ;
typedef TYPE_1__ PyArray_Descr ;
typedef TYPE_3__ PyArrayObject_fields ;
typedef TYPE_1__ PyArrayObject ;


 scalar_t__ DEPRECATE (char*) ;
 int NPY_ARRAY_UPDATE_ALL ;
 scalar_t__ NPY_VOID ;
 int PyArray_DATA (TYPE_1__*) ;
 TYPE_1__* PyArray_DESCR (TYPE_1__*) ;
 int PyArray_DESCR_REPLACE (TYPE_1__*) ;
 int* PyArray_DIMS (TYPE_1__*) ;
 int PyArray_DescrConverter (TYPE_1__*,TYPE_1__**) ;
 int PyArray_FLAGS (TYPE_1__*) ;
 scalar_t__ PyArray_IS_C_CONTIGUOUS (TYPE_1__*) ;
 scalar_t__ PyArray_IS_F_CONTIGUOUS (TYPE_1__*) ;
 int PyArray_NDIM (TYPE_1__*) ;
 scalar_t__ PyArray_NewFromDescr (int *,TYPE_1__*,int,int*,int*,int ,int ,int *) ;
 int* PyArray_STRIDES (TYPE_1__*) ;
 int PyArray_Type ;
 int PyArray_UpdateFlags (TYPE_1__*,int ) ;
 scalar_t__ PyDataType_HASSUBARRAY (TYPE_1__*) ;
 scalar_t__ PyDataType_ISUNSIZED (TYPE_1__*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 TYPE_1__* PyObject_CallFunction (TYPE_1__*,char*,TYPE_1__*,TYPE_1__*) ;
 int Py_DECREF (TYPE_1__*) ;
 int Py_INCREF (TYPE_1__*) ;
 scalar_t__ _may_have_objects (TYPE_1__*) ;
 int npy_cache_import (char*,char*,TYPE_1__**) ;
 int npy_free_cache_dim_array (TYPE_1__*) ;

__attribute__((used)) static int
array_descr_set(PyArrayObject *self, PyObject *arg)
{
    PyArray_Descr *newtype = ((void*)0);

    if (arg == ((void*)0)) {
        PyErr_SetString(PyExc_AttributeError,
                "Cannot delete array dtype");
        return -1;
    }

    if (!(PyArray_DescrConverter(arg, &newtype)) ||
        newtype == ((void*)0)) {
        PyErr_SetString(PyExc_TypeError,
                "invalid data-type for array");
        return -1;
    }


    if (_may_have_objects(PyArray_DESCR(self)) || _may_have_objects(newtype)) {
        static PyObject *checkfunc = ((void*)0);
        PyObject *safe;

        npy_cache_import("numpy.core._internal", "_view_is_safe", &checkfunc);
        if (checkfunc == ((void*)0)) {
            goto fail;
        }

        safe = PyObject_CallFunction(checkfunc, "OO",
                                     PyArray_DESCR(self), newtype);
        if (safe == ((void*)0)) {
            goto fail;
        }
        Py_DECREF(safe);
    }





    if (newtype->type_num == NPY_VOID &&
            PyDataType_ISUNSIZED(newtype) &&
            newtype->elsize != PyArray_DESCR(self)->elsize) {
        PyArray_DESCR_REPLACE(newtype);
        if (newtype == ((void*)0)) {
            return -1;
        }
        newtype->elsize = PyArray_DESCR(self)->elsize;
    }


    if (newtype->elsize != PyArray_DESCR(self)->elsize) {
        int axis;
        npy_intp newdim;


        if (PyArray_NDIM(self) == 0) {
            PyErr_SetString(PyExc_ValueError,
                    "Changing the dtype of a 0d array is only supported "
                    "if the itemsize is unchanged");
            goto fail;
        }
        else if (PyDataType_HASSUBARRAY(newtype)) {
            PyErr_SetString(PyExc_ValueError,
                    "Changing the dtype to a subarray type is only supported "
                    "if the total itemsize is unchanged");
            goto fail;
        }


        if (PyArray_IS_C_CONTIGUOUS(self)) {
            axis = PyArray_NDIM(self) - 1;
        }
        else if (PyArray_IS_F_CONTIGUOUS(self)) {

            if (DEPRECATE(
                        "Changing the shape of an F-contiguous array by "
                        "descriptor assignment is deprecated. To maintain the "
                        "Fortran contiguity of a multidimensional Fortran "
                        "array, use 'a.T.view(...).T' instead") < 0) {
                goto fail;
            }
            axis = 0;
        }
        else {

            PyErr_SetString(PyExc_ValueError,
                    "To change to a dtype of a different size, the array must "
                    "be C-contiguous");
            goto fail;
        }

        if (newtype->elsize < PyArray_DESCR(self)->elsize) {

            if (newtype->elsize == 0 ||
                    PyArray_DESCR(self)->elsize % newtype->elsize != 0) {
                PyErr_SetString(PyExc_ValueError,
                        "When changing to a smaller dtype, its size must be a "
                        "divisor of the size of original dtype");
                goto fail;
            }
            newdim = PyArray_DESCR(self)->elsize / newtype->elsize;
            PyArray_DIMS(self)[axis] *= newdim;
            PyArray_STRIDES(self)[axis] = newtype->elsize;
        }
        else if (newtype->elsize > PyArray_DESCR(self)->elsize) {

            newdim = PyArray_DIMS(self)[axis] * PyArray_DESCR(self)->elsize;
            if ((newdim % newtype->elsize) != 0) {
                PyErr_SetString(PyExc_ValueError,
                        "When changing to a larger dtype, its size must be a "
                        "divisor of the total size in bytes of the last axis "
                        "of the array.");
                goto fail;
            }
            PyArray_DIMS(self)[axis] = newdim / newtype->elsize;
            PyArray_STRIDES(self)[axis] = newtype->elsize;
        }
    }


    if (PyDataType_HASSUBARRAY(newtype)) {




        PyArrayObject *temp;




        temp = (PyArrayObject *)
            PyArray_NewFromDescr(&PyArray_Type, newtype, PyArray_NDIM(self),
                                 PyArray_DIMS(self), PyArray_STRIDES(self),
                                 PyArray_DATA(self), PyArray_FLAGS(self), ((void*)0));
        if (temp == ((void*)0)) {
            return -1;
        }
        npy_free_cache_dim_array(self);
        ((PyArrayObject_fields *)self)->dimensions = PyArray_DIMS(temp);
        ((PyArrayObject_fields *)self)->nd = PyArray_NDIM(temp);
        ((PyArrayObject_fields *)self)->strides = PyArray_STRIDES(temp);
        newtype = PyArray_DESCR(temp);
        Py_INCREF(PyArray_DESCR(temp));

        ((PyArrayObject_fields *)temp)->nd = 0;
        ((PyArrayObject_fields *)temp)->dimensions = ((void*)0);
        Py_DECREF(temp);
    }

    Py_DECREF(PyArray_DESCR(self));
    ((PyArrayObject_fields *)self)->descr = newtype;
    PyArray_UpdateFlags(self, NPY_ARRAY_UPDATE_ALL);
    return 0;

 fail:
    Py_DECREF(newtype);
    return -1;
}
