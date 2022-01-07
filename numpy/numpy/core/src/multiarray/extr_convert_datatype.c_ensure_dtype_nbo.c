
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int byteorder; } ;
typedef TYPE_1__ PyArray_Descr ;


 int NPY_NATIVE ;
 TYPE_1__* PyArray_DescrNewByteorder (TYPE_1__*,int ) ;
 scalar_t__ PyArray_ISNBO (int ) ;
 int Py_INCREF (TYPE_1__*) ;

__attribute__((used)) static PyArray_Descr *
ensure_dtype_nbo(PyArray_Descr *type)
{
    if (PyArray_ISNBO(type->byteorder)) {
        Py_INCREF(type);
        return type;
    }
    else {
        return PyArray_DescrNewByteorder(type, NPY_NATIVE);
    }
}
