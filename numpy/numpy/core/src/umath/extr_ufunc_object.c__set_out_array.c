
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 scalar_t__ PyArray_Check (int *) ;
 scalar_t__ PyArray_FailUnlessWriteable (int *,char*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int Py_INCREF (int *) ;
 int * Py_None ;

__attribute__((used)) static int
_set_out_array(PyObject *obj, PyArrayObject **store)
{
    if (obj == Py_None) {

        return 0;
    }
    if (PyArray_Check(obj)) {

        if (PyArray_FailUnlessWriteable((PyArrayObject *)obj,
                                        "output array") < 0) {
            return -1;
        }
        Py_INCREF(obj);
        *store = (PyArrayObject *)obj;

        return 0;
    }
    PyErr_SetString(PyExc_TypeError, "return arrays must be of ArrayType");

    return -1;
}
