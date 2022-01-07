
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int PyObject ;


 int Bool ;
 long NPY_MAX_INTP ;
 long NPY_MIN_INTP ;
 scalar_t__ PyArray_IsScalar (int *,int ) ;
 scalar_t__ PyBool_Check (int *) ;
 scalar_t__ PyErr_GivenExceptionMatches (int *,int ) ;
 int * PyErr_Occurred () ;
 int PyErr_SetString (int ,char const*) ;
 int PyExc_OverflowError ;
 int PyExc_TypeError ;
 int PyInt_AS_LONG (int *) ;
 scalar_t__ PyInt_CheckExact (int *) ;
 long PyLong_AsLong (int *) ;
 long PyLong_AsLongLong (int *) ;
 scalar_t__ PyLong_CheckExact (int *) ;
 int * PyNumber_Index (int *) ;
 int Py_DECREF (int *) ;
 scalar_t__ error_converting (long) ;

__attribute__((used)) static npy_intp
PyArray_PyIntAsIntp_ErrMsg(PyObject *o, const char * msg)
{



    long long_value = -1;

    PyObject *obj, *err;






    if (!o || PyBool_Check(o) || PyArray_IsScalar(o, Bool)) {
        PyErr_SetString(PyExc_TypeError, msg);
        return -1;
    }






    if (PyInt_CheckExact(o)) {


        return PyInt_AS_LONG(o);




    }
    else

    if (PyLong_CheckExact(o)) {



        long_value = PyLong_AsLong(o);

        return (npy_intp)long_value;
    }






    obj = PyNumber_Index(o);
    if (obj == ((void*)0)) {
        return -1;
    }



    long_value = PyLong_AsLong(obj);

    Py_DECREF(obj);

    if (error_converting(long_value)) {
        err = PyErr_Occurred();

        if (PyErr_GivenExceptionMatches(err, PyExc_TypeError)) {
            PyErr_SetString(PyExc_TypeError, msg);
        }
        return -1;
    }
    goto overflow_check;

overflow_check:
    return long_value;
}
