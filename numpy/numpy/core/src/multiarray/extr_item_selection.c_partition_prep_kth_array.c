
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t npy_intp ;
typedef int PyArrayObject ;


 int NPY_INTP ;
 int NPY_QUICKSORT ;
 int PyArray_CanCastSafely (int ,int ) ;
 scalar_t__ PyArray_Cast (int *,int ) ;
 size_t* PyArray_DATA (int *) ;
 int PyArray_NDIM (int *) ;
 size_t* PyArray_SHAPE (int *) ;
 int PyArray_SIZE (int *) ;
 int PyArray_Sort (int *,int,int ) ;
 int PyArray_TYPE (int *) ;
 int PyErr_Format (int ,char*,...) ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static PyArrayObject *
partition_prep_kth_array(PyArrayObject * ktharray,
                         PyArrayObject * op,
                         int axis)
{
    const npy_intp * shape = PyArray_SHAPE(op);
    PyArrayObject * kthrvl;
    npy_intp * kth;
    npy_intp nkth, i;

    if (!PyArray_CanCastSafely(PyArray_TYPE(ktharray), NPY_INTP)) {
        PyErr_Format(PyExc_TypeError, "Partition index must be integer");
        return ((void*)0);
    }

    if (PyArray_NDIM(ktharray) > 1) {
        PyErr_Format(PyExc_ValueError, "kth array must have dimension <= 1");
        return ((void*)0);
    }
    kthrvl = (PyArrayObject *)PyArray_Cast(ktharray, NPY_INTP);

    if (kthrvl == ((void*)0))
        return ((void*)0);

    kth = PyArray_DATA(kthrvl);
    nkth = PyArray_SIZE(kthrvl);

    for (i = 0; i < nkth; i++) {
        if (kth[i] < 0) {
            kth[i] += shape[axis];
        }
        if (PyArray_SIZE(op) != 0 &&
                    (kth[i] < 0 || kth[i] >= shape[axis])) {
            PyErr_Format(PyExc_ValueError, "kth(=%zd) out of bounds (%zd)",
                         kth[i], shape[axis]);
            Py_XDECREF(kthrvl);
            return ((void*)0);
        }
    }





    if (PyArray_SIZE(kthrvl) > 1) {
        PyArray_Sort(kthrvl, -1, NPY_QUICKSORT);
    }

    return kthrvl;
}
