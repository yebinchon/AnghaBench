
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;
typedef int NPY_ORDER ;


 int NPY_CORDER ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int ,int *) ;
 int * PyArray_Flatten (int *,int ) ;
 int PyArray_OrderConverter ;

__attribute__((used)) static PyObject *
array_flatten(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    NPY_ORDER order = NPY_CORDER;
    static char *kwlist[] = {"order", ((void*)0)};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "|O&:flatten", kwlist,
                            PyArray_OrderConverter, &order)) {
        return ((void*)0);
    }
    return PyArray_Flatten(self, order);
}
