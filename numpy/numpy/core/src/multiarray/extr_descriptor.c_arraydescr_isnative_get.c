
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;


 int * Py_False ;
 int Py_INCREF (int *) ;
 int * Py_True ;
 int _arraydescr_isnative (int *) ;

__attribute__((used)) static PyObject *
arraydescr_isnative_get(PyArray_Descr *self)
{
    PyObject *ret;
    int retval;
    retval = _arraydescr_isnative(self);
    if (retval == -1) {
        return ((void*)0);
    }
    ret = retval ? Py_True : Py_False;
    Py_INCREF(ret);
    return ret;
}
