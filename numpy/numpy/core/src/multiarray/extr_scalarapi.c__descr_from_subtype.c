
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tp_mro; } ;
typedef TYPE_1__ PyTypeObject ;
typedef int PyObject ;
typedef int PyArray_Descr ;


 int NPY_OBJECT ;
 int * PyArray_DescrFromType (int ) ;
 int * PyArray_DescrFromTypeObject (int ) ;
 int PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;

__attribute__((used)) static PyArray_Descr *
_descr_from_subtype(PyObject *type)
{
    PyObject *mro;
    mro = ((PyTypeObject *)type)->tp_mro;
    if (PyTuple_GET_SIZE(mro) < 2) {
        return PyArray_DescrFromType(NPY_OBJECT);
    }
    return PyArray_DescrFromTypeObject(PyTuple_GET_ITEM(mro, 1));
}
