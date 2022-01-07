
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int * PyObject_Call (int *,int *,int *) ;
 int * PyObject_CallFunction (int *,char*,int *,int *) ;
 int * Py_BuildValue (char*,char*,char*,...) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *
_GenericBinaryOutFunction(PyArrayObject *m1, PyObject *m2, PyArrayObject *out,
                          PyObject *op)
{
    if (out == ((void*)0)) {
        return PyObject_CallFunction(op, "OO", m1, m2);
    }
    else {
        PyObject *args, *ret;
        static PyObject *kw = ((void*)0);

        if (kw == ((void*)0)) {
            kw = Py_BuildValue("{s:s}", "casting", "unsafe");
            if (kw == ((void*)0)) {
                return ((void*)0);
            }
        }

        args = Py_BuildValue("OOO", m1, m2, out);
        if (args == ((void*)0)) {
            return ((void*)0);
        }

        ret = PyObject_Call(op, args, kw);

        Py_DECREF(args);

        return ret;
    }
}
