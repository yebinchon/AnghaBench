
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;


 int NPY_ITEM_HASOBJECT ;
 scalar_t__ PyDataType_FLAGCHK (int *,int ) ;
 int Py_RETURN_FALSE ;
 int Py_RETURN_TRUE ;

__attribute__((used)) static PyObject *
arraydescr_hasobject_get(PyArray_Descr *self)
{
    if (PyDataType_FLAGCHK(self, NPY_ITEM_HASOBJECT)) {
        Py_RETURN_TRUE;
    }
    else {
        Py_RETURN_FALSE;
    }
}
