
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* tp_free ) (int *) ;} ;
struct TYPE_3__ {int flags; int nd; int descr; int dimensions; scalar_t__ data; scalar_t__ base; int * weakreflist; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayObject_fields ;
typedef int PyArrayObject ;


 int NPY_ARRAY_OWNDATA ;
 int NPY_ARRAY_UPDATEIFCOPY ;
 int NPY_ARRAY_WRITEBACKIFCOPY ;
 int NPY_ITEM_REFCOUNT ;
 int PyArray_FLAGS (int *) ;
 int PyArray_NBYTES (int *) ;
 int PyArray_ResolveWritebackIfCopy (int *) ;
 int PyArray_XDECREF (int *) ;
 scalar_t__ PyDataType_FLAGCHK (int ,int ) ;
 int PyErr_Clear () ;
 int PyErr_Print () ;
 int PyExc_DeprecationWarning ;
 int PyExc_RuntimeWarning ;
 int PyObject_ClearWeakRefs (int *) ;
 int Py_DECREF (int ) ;
 int Py_INCREF (int *) ;
 TYPE_2__* Py_TYPE (int *) ;
 int Py_XDECREF (scalar_t__) ;
 int WARN_IN_DEALLOC (int ,char const*) ;
 int _dealloc_cached_buffer_info (int *) ;
 int npy_free_cache (scalar_t__,int ) ;
 int npy_free_cache_dim (int ,int) ;
 int stub1 (int *) ;

__attribute__((used)) static void
array_dealloc(PyArrayObject *self)
{
    PyArrayObject_fields *fa = (PyArrayObject_fields *)self;

    _dealloc_cached_buffer_info((PyObject*)self);

    if (fa->weakreflist != ((void*)0)) {
        PyObject_ClearWeakRefs((PyObject *)self);
    }
    if (fa->base) {
        int retval;
        if (PyArray_FLAGS(self) & NPY_ARRAY_WRITEBACKIFCOPY)
        {
            char const * msg = "WRITEBACKIFCOPY detected in array_dealloc. "
                " Required call to PyArray_ResolveWritebackIfCopy or "
                "PyArray_DiscardWritebackIfCopy is missing.";




            Py_INCREF(self);
            WARN_IN_DEALLOC(PyExc_RuntimeWarning, msg);
            retval = PyArray_ResolveWritebackIfCopy(self);
            if (retval < 0)
            {
                PyErr_Print();
                PyErr_Clear();
            }
        }
        if (PyArray_FLAGS(self) & NPY_ARRAY_UPDATEIFCOPY) {

            char const * msg = "UPDATEIFCOPY detected in array_dealloc. "
                " Required call to PyArray_ResolveWritebackIfCopy or "
                "PyArray_DiscardWritebackIfCopy is missing";




            Py_INCREF(self);

            WARN_IN_DEALLOC(PyExc_DeprecationWarning, msg);
            retval = PyArray_ResolveWritebackIfCopy(self);
            if (retval < 0)
            {
                PyErr_Print();
                PyErr_Clear();
            }
        }




        Py_XDECREF(fa->base);
    }

    if ((fa->flags & NPY_ARRAY_OWNDATA) && fa->data) {

        if (PyDataType_FLAGCHK(fa->descr, NPY_ITEM_REFCOUNT)) {
            PyArray_XDECREF(self);
        }
        npy_free_cache(fa->data, PyArray_NBYTES(self));
    }


    npy_free_cache_dim(fa->dimensions, 2 * fa->nd);
    Py_DECREF(fa->descr);
    Py_TYPE(self)->tp_free((PyObject *)self);
}
