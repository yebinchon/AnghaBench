
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {int ao; int dataptr; } ;
typedef TYPE_1__ PyObject ;
typedef TYPE_1__ PyArray_Descr ;
typedef TYPE_1__ PyArrayObject ;
typedef TYPE_1__ PyArrayIterObject ;


 int PyArray_DIMS (TYPE_1__*) ;
 int PyArray_ITER_DATA (TYPE_1__*) ;
 int PyArray_ITER_NEXT (TYPE_1__*) ;
 scalar_t__ PyArray_ITER_NOTDONE (TYPE_1__*) ;
 scalar_t__ PyArray_IterNew (TYPE_1__*) ;
 int PyArray_NDIM (TYPE_1__*) ;
 scalar_t__ PyArray_SETITEM (TYPE_1__*,int ,TYPE_1__*) ;
 scalar_t__ PyArray_SimpleNewFromDescr (int ,int ,TYPE_1__*) ;
 TYPE_1__* PyArray_ToScalar (int ,int ) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 TYPE_1__* PyObject_CallFunctionObjArgs (TYPE_1__*,TYPE_1__*,int *) ;
 int Py_DECREF (TYPE_1__*) ;
 int Py_XDECREF (TYPE_1__*) ;

__attribute__((used)) static PyObject *
_vec_string_no_args(PyArrayObject* char_array,
                                   PyArray_Descr* type, PyObject* method)
{






    PyArrayIterObject* in_iter = ((void*)0);
    PyArrayObject* result = ((void*)0);
    PyArrayIterObject* out_iter = ((void*)0);

    in_iter = (PyArrayIterObject*)PyArray_IterNew((PyObject*)char_array);
    if (in_iter == ((void*)0)) {
        Py_DECREF(type);
        goto err;
    }

    result = (PyArrayObject*)PyArray_SimpleNewFromDescr(
            PyArray_NDIM(char_array), PyArray_DIMS(char_array), type);
    if (result == ((void*)0)) {
        goto err;
    }

    out_iter = (PyArrayIterObject*)PyArray_IterNew((PyObject*)result);
    if (out_iter == ((void*)0)) {
        goto err;
    }

    while (PyArray_ITER_NOTDONE(in_iter)) {
        PyObject* item_result;
        PyObject* item = PyArray_ToScalar(in_iter->dataptr, in_iter->ao);
        if (item == ((void*)0)) {
            goto err;
        }

        item_result = PyObject_CallFunctionObjArgs(method, item, ((void*)0));
        Py_DECREF(item);
        if (item_result == ((void*)0)) {
            goto err;
        }

        if (PyArray_SETITEM(result, PyArray_ITER_DATA(out_iter), item_result)) {
            Py_DECREF(item_result);
            PyErr_SetString( PyExc_TypeError,
                "result array type does not match underlying function");
            goto err;
        }
        Py_DECREF(item_result);

        PyArray_ITER_NEXT(in_iter);
        PyArray_ITER_NEXT(out_iter);
    }

    Py_DECREF(in_iter);
    Py_DECREF(out_iter);

    return (PyObject*)result;

 err:
    Py_XDECREF(in_iter);
    Py_XDECREF(out_iter);
    Py_XDECREF(result);

    return 0;
}
