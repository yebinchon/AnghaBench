
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 int NPY_NOTYPE ;
 int * PyArray_DescrFromType (int) ;
 int * PyDict_New () ;
 int PyDict_SetItemString (int *,char*,int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *
_get_keywords(int rtype, PyArrayObject *out)
{
    PyObject *kwds = ((void*)0);
    if (rtype != NPY_NOTYPE || out != ((void*)0)) {
        kwds = PyDict_New();
        if (rtype != NPY_NOTYPE) {
            PyArray_Descr *descr;
            descr = PyArray_DescrFromType(rtype);
            if (descr) {
                PyDict_SetItemString(kwds, "dtype", (PyObject *)descr);
                Py_DECREF(descr);
            }
        }
        if (out != ((void*)0)) {
            PyDict_SetItemString(kwds, "out", (PyObject *)out);
        }
    }
    return kwds;
}
