
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_8__ {int elsize; int kind; } ;
struct TYPE_7__ {int two; int nd; int flags; int * descr; int data; int * strides; int * shape; int itemsize; int typekind; } ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef TYPE_1__ PyArrayInterface ;


 int NPY_ARRAY_NOTSWAPPED ;
 int NPY_ARRAY_OWNDATA ;
 int NPY_ARRAY_UPDATEIFCOPY ;
 int NPY_ARRAY_WRITEBACKIFCOPY ;
 int NPY_ARR_HAS_DESCR ;
 int * NpyCapsule_FromVoidPtrAndDesc (TYPE_1__*,int *,int ) ;
 int PyArray_DATA (int *) ;
 TYPE_2__* PyArray_DESCR (int *) ;
 int PyArray_DIMS (int *) ;
 int PyArray_FLAGS (int *) ;
 scalar_t__ PyArray_ISNOTSWAPPED (int *) ;
 scalar_t__ PyArray_ISWRITEABLE (int *) ;
 int PyArray_NDIM (int *) ;
 int PyArray_STRIDES (int *) ;
 int PyArray_free (TYPE_1__*) ;
 scalar_t__ PyArray_malloc (int) ;
 scalar_t__ PyDataType_HASFIELDS (TYPE_2__*) ;
 int PyErr_Clear () ;
 int * PyErr_NoMemory () ;
 int Py_INCREF (int *) ;
 scalar_t__ array_might_be_written (int *) ;
 int * arraydescr_protocol_descr_get (TYPE_2__*) ;
 int gentype_struct_free ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static PyObject *
array_struct_get(PyArrayObject *self)
{
    PyArrayInterface *inter;
    PyObject *ret;

    if (PyArray_ISWRITEABLE(self)) {
        if (array_might_be_written(self) < 0) {
            return ((void*)0);
        }
    }
    inter = (PyArrayInterface *)PyArray_malloc(sizeof(PyArrayInterface));
    if (inter==((void*)0)) {
        return PyErr_NoMemory();
    }
    inter->two = 2;
    inter->nd = PyArray_NDIM(self);
    inter->typekind = PyArray_DESCR(self)->kind;
    inter->itemsize = PyArray_DESCR(self)->elsize;
    inter->flags = PyArray_FLAGS(self);

    inter->flags &= ~(NPY_ARRAY_WRITEBACKIFCOPY | NPY_ARRAY_UPDATEIFCOPY |NPY_ARRAY_OWNDATA);
    if (PyArray_ISNOTSWAPPED(self)) inter->flags |= NPY_ARRAY_NOTSWAPPED;




    if (PyArray_NDIM(self) > 0) {
        inter->shape = (npy_intp *)PyArray_malloc(2*sizeof(npy_intp)*PyArray_NDIM(self));
        if (inter->shape == ((void*)0)) {
            PyArray_free(inter);
            return PyErr_NoMemory();
        }
        inter->strides = inter->shape + PyArray_NDIM(self);
        if (PyArray_NDIM(self)) {
            memcpy(inter->shape, PyArray_DIMS(self), sizeof(npy_intp)*PyArray_NDIM(self));
            memcpy(inter->strides, PyArray_STRIDES(self), sizeof(npy_intp)*PyArray_NDIM(self));
        }
    }
    else {
        inter->shape = ((void*)0);
        inter->strides = ((void*)0);
    }
    inter->data = PyArray_DATA(self);
    if (PyDataType_HASFIELDS(PyArray_DESCR(self))) {
        inter->descr = arraydescr_protocol_descr_get(PyArray_DESCR(self));
        if (inter->descr == ((void*)0)) {
            PyErr_Clear();
        }
        else {
            inter->flags &= NPY_ARR_HAS_DESCR;
        }
    }
    else {
        inter->descr = ((void*)0);
    }
    Py_INCREF(self);
    ret = NpyCapsule_FromVoidPtrAndDesc(inter, self, gentype_struct_free);
    return ret;
}
