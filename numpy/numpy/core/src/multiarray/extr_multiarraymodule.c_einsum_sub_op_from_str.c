
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_ARRAY_ENSUREARRAY ;
 int NPY_MAXARGS ;
 scalar_t__ PyArray_FROM_OF (int *,int ) ;
 char* PyBytes_AsString (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 int * PyUnicode_AsASCIIString (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static int
einsum_sub_op_from_str(PyObject *args, PyObject **str_obj, char **subscripts,
                       PyArrayObject **op)
{
    int i, nop;
    PyObject *subscripts_str;

    nop = PyTuple_GET_SIZE(args) - 1;
    if (nop <= 0) {
        PyErr_SetString(PyExc_ValueError,
                        "must specify the einstein sum subscripts string "
                        "and at least one operand");
        return -1;
    }
    else if (nop >= NPY_MAXARGS) {
        PyErr_SetString(PyExc_ValueError, "too many operands");
        return -1;
    }


    subscripts_str = PyTuple_GET_ITEM(args, 0);
    if (PyUnicode_Check(subscripts_str)) {
        *str_obj = PyUnicode_AsASCIIString(subscripts_str);
        if (*str_obj == ((void*)0)) {
            return -1;
        }
        subscripts_str = *str_obj;
    }

    *subscripts = PyBytes_AsString(subscripts_str);
    if (*subscripts == ((void*)0)) {
        Py_XDECREF(*str_obj);
        *str_obj = ((void*)0);
        return -1;
    }


    for (i = 0; i < nop; ++i) {
        op[i] = ((void*)0);
    }


    for (i = 0; i < nop; ++i) {
        PyObject *obj = PyTuple_GET_ITEM(args, i+1);

        op[i] = (PyArrayObject *)PyArray_FROM_OF(obj, NPY_ARRAY_ENSUREARRAY);
        if (op[i] == ((void*)0)) {
            goto fail;
        }
    }

    return nop;

fail:
    for (i = 0; i < nop; ++i) {
        Py_XDECREF(op[i]);
        op[i] = ((void*)0);
    }

    return -1;
}
