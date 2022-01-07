
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int NPY_MAXDIMS ;
 int PyArray_PyIntAsInt (int *) ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int PyList_Check (int *) ;
 int * PySequence_GetItem (int *,int) ;
 int PySequence_Size (int *) ;
 int PyTuple_Check (int *) ;
 int Py_DECREF (int *) ;
 int * Py_None ;

__attribute__((used)) static int
npyiter_convert_op_axes(PyObject *op_axes_in, int nop,
                        int **op_axes, int *oa_ndim)
{
    PyObject *a;
    int iop;

    if ((!PyTuple_Check(op_axes_in) && !PyList_Check(op_axes_in)) ||
                                PySequence_Size(op_axes_in) != nop) {
        PyErr_SetString(PyExc_ValueError,
                "op_axes must be a tuple/list matching the number of ops");
        return 0;
    }

    *oa_ndim = -1;


    for (iop = 0; iop < nop; ++iop) {
        int idim;
        a = PySequence_GetItem(op_axes_in, iop);
        if (a == ((void*)0)) {
            return 0;
        }
        if (a == Py_None) {
            op_axes[iop] = ((void*)0);
        } else {
            if (!PyTuple_Check(a) && !PyList_Check(a)) {
                PyErr_SetString(PyExc_ValueError,
                        "Each entry of op_axes must be None "
                        "or a tuple/list");
                Py_DECREF(a);
                return 0;
            }
            if (*oa_ndim == -1) {
                *oa_ndim = PySequence_Size(a);
                if (*oa_ndim > NPY_MAXDIMS) {
                    PyErr_SetString(PyExc_ValueError,
                            "Too many dimensions in op_axes");
                    Py_DECREF(a);
                    return 0;
                }
            }
            if (PySequence_Size(a) != *oa_ndim) {
                PyErr_SetString(PyExc_ValueError,
                        "Each entry of op_axes must have the same size");
                Py_DECREF(a);
                return 0;
            }
            for (idim = 0; idim < *oa_ndim; ++idim) {
                PyObject *v = PySequence_GetItem(a, idim);
                if (v == ((void*)0)) {
                    Py_DECREF(a);
                    return 0;
                }

                if (v == Py_None) {
                    op_axes[iop][idim] = -1;
                }
                else {
                    op_axes[iop][idim] = PyArray_PyIntAsInt(v);
                    if (op_axes[iop][idim]==-1 &&
                                                PyErr_Occurred()) {
                        Py_DECREF(a);
                        Py_DECREF(v);
                        return 0;
                    }
                }
                Py_DECREF(v);
            }
        }
        Py_DECREF(a);
    }

    if (*oa_ndim == -1) {
        PyErr_SetString(PyExc_ValueError,
                "If op_axes is provided, at least one list of axes "
                "must be contained within it");
        return 0;
    }

    return 1;
}
