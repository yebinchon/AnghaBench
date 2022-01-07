
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int elsize; } ;
struct TYPE_8__ {scalar_t__ ao; } ;
struct TYPE_7__ {TYPE_3__* _internal_iter; } ;
struct TYPE_6__ {int flags; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayObject_fields ;
typedef int PyArrayObject ;
typedef TYPE_2__ PyArrayNeighborhoodIterObject ;
typedef TYPE_3__ PyArrayIterObject ;


 int NPY_ARRAY_BEHAVED ;
 int PyArray_DATA (int *) ;
 TYPE_5__* PyArray_DESCR (scalar_t__) ;
 int PyArray_ENABLEFLAGS (scalar_t__,int ) ;
 int PyArray_FLAGS (scalar_t__) ;
 scalar_t__ PyArray_ISOBJECT (scalar_t__) ;
 int PyArray_SETITEM (scalar_t__,char*,int *) ;
 int PyDataMem_FREE (char*) ;
 char* PyDataMem_NEW (int ) ;
 int PyErr_SetNone (int ) ;
 int PyExc_MemoryError ;
 int Py_INCREF (int *) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static char* _set_constant(PyArrayNeighborhoodIterObject* iter,
        PyArrayObject *fill)
{
    char *ret;
    PyArrayIterObject *ar = iter->_internal_iter;
    int storeflags, st;

    ret = PyDataMem_NEW(PyArray_DESCR(ar->ao)->elsize);
    if (ret == ((void*)0)) {
        PyErr_SetNone(PyExc_MemoryError);
        return ((void*)0);
    }

    if (PyArray_ISOBJECT(ar->ao)) {
        memcpy(ret, PyArray_DATA(fill), sizeof(PyObject*));
        Py_INCREF(*(PyObject**)ret);
    } else {


        storeflags = PyArray_FLAGS(ar->ao);
        PyArray_ENABLEFLAGS(ar->ao, NPY_ARRAY_BEHAVED);
        st = PyArray_SETITEM(ar->ao, ret, (PyObject*)fill);
        ((PyArrayObject_fields *)ar->ao)->flags = storeflags;

        if (st < 0) {
            PyDataMem_FREE(ret);
            return ((void*)0);
        }
    }

    return ret;
}
