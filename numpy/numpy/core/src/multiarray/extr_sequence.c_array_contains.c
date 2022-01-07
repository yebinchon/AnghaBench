
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_MAXDIMS ;
 int * PyArray_Any (int *,int ,int *) ;
 int * PyArray_EnsureAnyArray (int ) ;
 int PyObject_IsTrue (int *) ;
 int PyObject_RichCompare (int *,int *,int ) ;
 int Py_DECREF (int *) ;
 int Py_EQ ;

__attribute__((used)) static int
array_contains(PyArrayObject *self, PyObject *el)
{


    int ret;
    PyObject *res, *any;

    res = PyArray_EnsureAnyArray(PyObject_RichCompare((PyObject *)self,
                                                      el, Py_EQ));
    if (res == ((void*)0)) {
        return -1;
    }
    any = PyArray_Any((PyArrayObject *)res, NPY_MAXDIMS, ((void*)0));
    Py_DECREF(res);
    ret = PyObject_IsTrue(any);
    Py_DECREF(any);
    return ret;
}
