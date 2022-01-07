
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayFlagsObject ;


 int PyArrayFlags_Type ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 scalar_t__ PyObject_TypeCheck (int *,int *) ;
 int Py_EQ ;
 int * Py_False ;
 int Py_INCREF (int *) ;
 int Py_NE ;
 int * Py_NotImplemented ;
 int * Py_True ;
 int arrayflags_compare (int *,int *) ;

__attribute__((used)) static PyObject*
arrayflags_richcompare(PyObject *self, PyObject *other, int cmp_op)
{
    PyObject *result = Py_NotImplemented;
    int cmp;

    if (cmp_op != Py_EQ && cmp_op != Py_NE) {
        PyErr_SetString(PyExc_TypeError,
                        "undefined comparison for flag object");
        return ((void*)0);
    }

    if (PyObject_TypeCheck(other, &PyArrayFlags_Type)) {
        cmp = arrayflags_compare((PyArrayFlagsObject *)self,
                                 (PyArrayFlagsObject *)other);

        if (cmp_op == Py_EQ) {
            result = (cmp == 0) ? Py_True : Py_False;
        }
        else if (cmp_op == Py_NE) {
            result = (cmp != 0) ? Py_True : Py_False;
        }
    }

    Py_INCREF(result);
    return result;
}
