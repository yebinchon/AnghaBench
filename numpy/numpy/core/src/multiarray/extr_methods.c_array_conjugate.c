
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArg_ParseTuple (int *,char*,int ,int **) ;
 int * PyArray_Conjugate (int *,int *) ;
 int PyArray_OutputConverter ;

__attribute__((used)) static PyObject *
array_conjugate(PyArrayObject *self, PyObject *args)
{
    PyArrayObject *out = ((void*)0);
    if (!PyArg_ParseTuple(args, "|O&:conjugate",
                          PyArray_OutputConverter,
                          &out)) {
        return ((void*)0);
    }
    return PyArray_Conjugate(self, out);
}
