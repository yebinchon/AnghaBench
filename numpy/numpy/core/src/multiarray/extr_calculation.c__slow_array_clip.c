
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maximum; int minimum; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;
 int * _GenericBinaryOutFunction (int *,int *,int *,int ) ;
 TYPE_1__ n_ops ;

__attribute__((used)) static PyObject *
_slow_array_clip(PyArrayObject *self, PyObject *min, PyObject *max, PyArrayObject *out)
{
    PyObject *res1=((void*)0), *res2=((void*)0);

    if (max != ((void*)0)) {
        res1 = _GenericBinaryOutFunction(self, max, out, n_ops.minimum);
        if (res1 == ((void*)0)) {
            return ((void*)0);
        }
    }
    else {
        res1 = (PyObject *)self;
        Py_INCREF(res1);
    }

    if (min != ((void*)0)) {
        res2 = _GenericBinaryOutFunction((PyArrayObject *)res1,
                                         min, out, n_ops.maximum);
        if (res2 == ((void*)0)) {
            Py_XDECREF(res1);
            return ((void*)0);
        }
    }
    else {
        res2 = res1;
        Py_INCREF(res2);
    }
    Py_DECREF(res1);
    return res2;
}
