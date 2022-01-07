
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_STRING ;
 scalar_t__ PyArray_Check (int *) ;
 int PyArray_ITEMSIZE (int *) ;
 int PyArray_MAX (int,int) ;
 scalar_t__ PyBuffer_Check (int *) ;
 int PyErr_Clear () ;
 scalar_t__ PyMemoryView_Check (int *) ;
 int PyObject_Length (int *) ;
 int * PyObject_Str (int *) ;
 int * PyObject_Unicode (int *) ;
 int * PySequence_GetItem (int *,int) ;
 int PySequence_Length (int *) ;
 scalar_t__ PyString_Check (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static int
discover_itemsize(PyObject *s, int nd, int *itemsize, int string_type)
{
    int r;
    npy_intp n, i;

    if (PyArray_Check(s)) {
        *itemsize = PyArray_MAX(*itemsize, PyArray_ITEMSIZE((PyArrayObject *)s));
        return 0;
    }

    if ((nd == 0) || PyString_Check(s) ||



            PyBuffer_Check(s) ||

            PyUnicode_Check(s)) {


        if (string_type && s != ((void*)0) &&
                !PyString_Check(s) && !PyUnicode_Check(s)) {
            PyObject *s_string = ((void*)0);
            if (string_type == NPY_STRING) {
                s_string = PyObject_Str(s);
            }
            else {



                s_string = PyObject_Unicode(s);

            }
            if (s_string) {
                n = PyObject_Length(s_string);
                Py_DECREF(s_string);
            }
            else {
                n = -1;
            }
        }
        else {
            n = PyObject_Length(s);
        }
        if (n == -1) {
            PyErr_Clear();
        }
        else {
            *itemsize = PyArray_MAX(*itemsize, n);
        }
        return 0;
    }

    n = PySequence_Length(s);
    for (i = 0; i < n; i++) {
        PyObject *e = PySequence_GetItem(s,i);

        if (e == ((void*)0)) {
            return -1;
        }

        r = discover_itemsize(e, nd - 1, itemsize, string_type);
        Py_DECREF(e);
        if (r == -1) {
            return -1;
        }
    }

    return 0;
}
