
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyArray_Descr ;


 int PyArray_DescrCheck (int *) ;
 int PyDict_Check (int *) ;
 int * PyDict_GetItem (int *,int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_SystemError ;
 int PyInt_Check (int *) ;
 int PyList_Append (int *,int *) ;
 int PyTuple_Check (int *) ;
 int * PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 int PyUString_Check (int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int _array_descr_walk (int *,int *) ;

__attribute__((used)) static int _array_descr_walk_fields(PyObject *names, PyObject* fields, PyObject* l)
{
    PyObject *key, *value, *foffset, *fdescr, *ftitle;
    Py_ssize_t pos = 0;
    int st;

    if (!PyTuple_Check(names)) {
        PyErr_SetString(PyExc_SystemError,
                "(Hash) names is not a tuple ???");
        return -1;
    }
    if (!PyDict_Check(fields)) {
        PyErr_SetString(PyExc_SystemError,
                "(Hash) fields is not a dict ???");
        return -1;
    }

    for (pos = 0; pos < PyTuple_GET_SIZE(names); pos++) {



        key = PyTuple_GET_ITEM(names, pos);
        value = PyDict_GetItem(fields, key);

        if (value == ((void*)0)) {
            PyErr_SetString(PyExc_SystemError,
                    "(Hash) names and fields inconsistent ???");
            return -1;
        }
        if (!PyUString_Check(key)) {
            PyErr_SetString(PyExc_SystemError,
                    "(Hash) key of dtype dict not a string ???");
            return -1;
        }
        if (!PyTuple_Check(value)) {
            PyErr_SetString(PyExc_SystemError,
                    "(Hash) value of dtype dict not a dtype ???");
            return -1;
        }
        if (PyTuple_GET_SIZE(value) < 2) {
            PyErr_SetString(PyExc_SystemError,
                    "(Hash) Less than 2 items in dtype dict ???");
            return -1;
        }
        PyList_Append(l, key);

        fdescr = PyTuple_GET_ITEM(value, 0);
        if (!PyArray_DescrCheck(fdescr)) {
            PyErr_SetString(PyExc_SystemError,
                    "(Hash) First item in compound dtype tuple not a descr ???");
            return -1;
        }
        else {
            Py_INCREF(fdescr);
            st = _array_descr_walk((PyArray_Descr*)fdescr, l);
            Py_DECREF(fdescr);
            if (st) {
                return -1;
            }
        }

        foffset = PyTuple_GET_ITEM(value, 1);
        if (!PyInt_Check(foffset)) {
            PyErr_SetString(PyExc_SystemError,
                    "(Hash) Second item in compound dtype tuple not an int ???");
            return -1;
        }
        else {
            PyList_Append(l, foffset);
        }

        if (PyTuple_GET_SIZE(value) > 2) {
            ftitle = PyTuple_GET_ITEM(value, 2);
            PyList_Append(l, ftitle);
        }
    }

    return 0;
}
