
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _tmp_string_t ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;


 scalar_t__ PyBytes_AsStringAndSize (int *,char**,scalar_t__*) ;
 int PyErr_Clear () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyUnicode_AsUTF8String (int *) ;
 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;
 scalar_t__ _append_char (int *,char) ;

__attribute__((used)) static int
_append_field_name(_tmp_string_t *str, PyObject *name)
{
    int ret = -1;
    char *p;
    Py_ssize_t len;
    PyObject *tmp;




    tmp = name;
    Py_INCREF(tmp);

    if (tmp == ((void*)0) || PyBytes_AsStringAndSize(tmp, &p, &len) < 0) {
        PyErr_Clear();
        PyErr_SetString(PyExc_ValueError, "invalid field name");
        goto fail;
    }
    if (_append_char(str, ':') < 0) {
        goto fail;
    }
    while (len > 0) {
        if (*p == ':') {
            PyErr_SetString(PyExc_ValueError,
                            "':' is not an allowed character in buffer "
                            "field names");
            goto fail;
        }
        if (_append_char(str, *p) < 0) {
            goto fail;
        }
        ++p;
        --len;
    }
    if (_append_char(str, ':') < 0) {
        goto fail;
    }
    ret = 0;
fail:
    Py_XDECREF(tmp);
    return ret;
}
