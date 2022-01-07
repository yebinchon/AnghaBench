
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int NPY_BUSDAY_ROLL ;


 int NPY_BUSDAY_BACKWARD ;
 int NPY_BUSDAY_FOLLOWING ;
 int NPY_BUSDAY_FORWARD ;
 int NPY_BUSDAY_MODIFIEDFOLLOWING ;
 int NPY_BUSDAY_MODIFIEDPRECEDING ;
 int NPY_BUSDAY_NAT ;
 int NPY_BUSDAY_PRECEDING ;
 int NPY_BUSDAY_RAISE ;
 scalar_t__ PyBytes_AsStringAndSize (int *,char**,int*) ;
 int PyErr_Format (int ,char*,char*) ;
 int PyExc_ValueError ;
 int * PyUnicode_AsASCIIString (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
PyArray_BusDayRollConverter(PyObject *roll_in, NPY_BUSDAY_ROLL *roll)
{
    PyObject *obj = roll_in;
    char *str;
    Py_ssize_t len;


    Py_INCREF(obj);
    if (PyUnicode_Check(obj)) {

        PyObject *obj_str;
        obj_str = PyUnicode_AsASCIIString(obj);
        if (obj_str == ((void*)0)) {
            Py_DECREF(obj);
            return 0;
        }
        Py_DECREF(obj);
        obj = obj_str;
    }

    if (PyBytes_AsStringAndSize(obj, &str, &len) < 0) {
        Py_DECREF(obj);
        return 0;
    }


    switch (str[0]) {
        case 'b':
            if (strcmp(str, "backward") == 0) {
                *roll = NPY_BUSDAY_BACKWARD;
                goto finish;
            }
            break;
        case 'f':
            if (len > 2) switch (str[2]) {
                case 'r':
                    if (strcmp(str, "forward") == 0) {
                        *roll = NPY_BUSDAY_FORWARD;
                        goto finish;
                    }
                    break;
                case 'l':
                    if (strcmp(str, "following") == 0) {
                        *roll = NPY_BUSDAY_FOLLOWING;
                        goto finish;
                    }
                    break;
            }
            break;
        case 'm':
            if (len > 8) switch (str[8]) {
                case 'f':
                    if (strcmp(str, "modifiedfollowing") == 0) {
                        *roll = NPY_BUSDAY_MODIFIEDFOLLOWING;
                        goto finish;
                    }
                    break;
                case 'p':
                    if (strcmp(str, "modifiedpreceding") == 0) {
                        *roll = NPY_BUSDAY_MODIFIEDPRECEDING;
                        goto finish;
                    }
                    break;
            }
            break;
        case 'n':
            if (strcmp(str, "nat") == 0) {
                *roll = NPY_BUSDAY_NAT;
                goto finish;
            }
            break;
        case 'p':
            if (strcmp(str, "preceding") == 0) {
                *roll = NPY_BUSDAY_PRECEDING;
                goto finish;
            }
            break;
        case 'r':
            if (strcmp(str, "raise") == 0) {
                *roll = NPY_BUSDAY_RAISE;
                goto finish;
            }
            break;
    }

    PyErr_Format(PyExc_ValueError,
            "Invalid business day roll parameter \"%s\"",
            str);
    Py_DECREF(obj);
    return 0;

finish:
    Py_DECREF(obj);
    return 1;
}
