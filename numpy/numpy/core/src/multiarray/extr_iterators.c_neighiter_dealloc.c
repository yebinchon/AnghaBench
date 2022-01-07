
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mode; TYPE_1__* _internal_iter; scalar_t__ constant; } ;
struct TYPE_5__ {int ao; } ;
typedef TYPE_1__ PyObject ;
typedef int PyArrayObject ;
typedef TYPE_2__ PyArrayNeighborhoodIterObject ;
typedef int PyArrayIterObject ;


 scalar_t__ NPY_NEIGHBORHOOD_ITER_CONSTANT_PADDING ;
 scalar_t__ PyArray_ISOBJECT (int ) ;
 int PyArray_free (int *) ;
 int PyDataMem_FREE (scalar_t__) ;
 int Py_DECREF (TYPE_1__*) ;
 int array_iter_base_dealloc (int *) ;

__attribute__((used)) static void neighiter_dealloc(PyArrayNeighborhoodIterObject* iter)
{
    if (iter->mode == NPY_NEIGHBORHOOD_ITER_CONSTANT_PADDING) {
        if (PyArray_ISOBJECT(iter->_internal_iter->ao)) {
            Py_DECREF(*(PyObject**)iter->constant);
        }
    }
    PyDataMem_FREE(iter->constant);
    Py_DECREF(iter->_internal_iter);

    array_iter_base_dealloc((PyArrayIterObject*)iter);
    PyArray_free((PyArrayObject*)iter);
}
