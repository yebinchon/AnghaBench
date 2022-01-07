
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 int EMPTY_SEQUENCE_ERR_MSG ;
 int NON_INTEGRAL_ERROR_MSG ;
 int NPY_MAXDIMS ;
 int PyArray_Check (int *) ;
 scalar_t__ PyArray_DTypeFromObject (int *,int ,int **) ;
 scalar_t__ PyArray_FromAny (int *,int *,int ,int ,int ,int *) ;
 scalar_t__ PyArray_ISBOOL (int *) ;
 scalar_t__ PyArray_ISINTEGER (int *) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_TypeError ;
 scalar_t__ PySequence_Check (int *) ;
 scalar_t__ PySequence_Size (int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static PyArrayObject *
astype_anyint(PyObject *obj) {
    PyArrayObject *ret;

    if (!PyArray_Check(obj)) {

        PyArray_Descr *dtype_guess = ((void*)0);
        if (PyArray_DTypeFromObject(obj, NPY_MAXDIMS, &dtype_guess) < 0) {
            return ((void*)0);
        }
        if (dtype_guess == ((void*)0)) {
            if (PySequence_Check(obj) && PySequence_Size(obj) == 0) {
                PyErr_SetString(PyExc_TypeError, EMPTY_SEQUENCE_ERR_MSG);
            }
            return ((void*)0);
        }
        ret = (PyArrayObject*)PyArray_FromAny(obj, dtype_guess, 0, 0, 0, ((void*)0));
        if (ret == ((void*)0)) {
            return ((void*)0);
        }
    }
    else {
        ret = (PyArrayObject *)obj;
        Py_INCREF(ret);
    }

    if (!(PyArray_ISINTEGER(ret) || PyArray_ISBOOL(ret))) {

        PyErr_SetString(PyExc_TypeError, NON_INTEGRAL_ERROR_MSG);
        Py_DECREF(ret);
        return ((void*)0);
    }

    return ret;
}
