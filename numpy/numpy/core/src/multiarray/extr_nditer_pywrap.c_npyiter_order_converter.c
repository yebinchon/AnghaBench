
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int NPY_ORDER ;


 int NPY_ANYORDER ;
 int NPY_CORDER ;
 int NPY_FORTRANORDER ;
 int NPY_KEEPORDER ;
 scalar_t__ PyBytes_AsStringAndSize (int *,char**,int*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyUnicode_AsASCIIString (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static int
npyiter_order_converter(PyObject *order_in, NPY_ORDER *order)
{
    char *str = ((void*)0);
    Py_ssize_t length = 0;

    if (PyUnicode_Check(order_in)) {

        PyObject *str_obj;
        int ret;
        str_obj = PyUnicode_AsASCIIString(order_in);
        if (str_obj == ((void*)0)) {
            return 0;
        }
        ret = npyiter_order_converter(str_obj, order);
        Py_DECREF(str_obj);
        return ret;
    }

    if (PyBytes_AsStringAndSize(order_in, &str, &length) < 0) {
        return 0;
    }

    if (length == 1) switch (str[0]) {
        case 'C':
            *order = NPY_CORDER;
            return 1;
        case 'F':
            *order = NPY_FORTRANORDER;
            return 1;
        case 'A':
            *order = NPY_ANYORDER;
            return 1;
        case 'K':
            *order = NPY_KEEPORDER;
            return 1;
    }

    PyErr_SetString(PyExc_ValueError,
                    "order must be one of 'C', 'F', 'A', or 'K'");
    return 0;
}
