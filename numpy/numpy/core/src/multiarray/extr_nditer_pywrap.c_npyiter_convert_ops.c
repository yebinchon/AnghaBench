
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;
typedef int npy_intp ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_ARRAY_WRITEBACKIFCOPY ;
 int NPY_ITER_ALLOCATE ;
 int NPY_ITER_READONLY ;
 int NPY_ITER_READWRITE ;
 int NPY_ITER_WRITEONLY ;
 int NPY_MAXARGS ;
 scalar_t__ PyArray_FROM_OF (int *,int) ;
 scalar_t__ PyErr_ExceptionMatches (int ) ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 scalar_t__ PyList_Check (int *) ;
 int * PySequence_GetItem (int *,int) ;
 int PySequence_Size (int *) ;
 scalar_t__ PyTuple_Check (int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int Py_XDECREF (int *) ;
 int npyiter_convert_op_flags_array (int *,int*,int) ;

__attribute__((used)) static int
npyiter_convert_ops(PyObject *op_in, PyObject *op_flags_in,
                    PyArrayObject **op, npy_uint32 *op_flags,
                    int *nop_out)
{
    int iop, nop;


    if (PyTuple_Check(op_in) || PyList_Check(op_in)) {
        nop = PySequence_Size(op_in);
        if (nop == 0) {
            PyErr_SetString(PyExc_ValueError,
                    "Must provide at least one operand");
            return 0;
        }
        if (nop > NPY_MAXARGS) {
            PyErr_SetString(PyExc_ValueError, "Too many operands");
            return 0;
        }

        for (iop = 0; iop < nop; ++iop) {
            PyObject *item = PySequence_GetItem(op_in, iop);
            if (item == ((void*)0)) {
                npy_intp i;
                for (i = 0; i < iop; ++i) {
                    Py_XDECREF(op[i]);
                }
                return 0;
            }
            else if (item == Py_None) {
                Py_DECREF(item);
                item = ((void*)0);
            }

            op[iop] = (PyArrayObject *)item;
        }
    }
    else {
        nop = 1;

        Py_INCREF(op_in);
        op[0] = (PyArrayObject *)op_in;
    }

    *nop_out = nop;


    if (op_flags_in == ((void*)0) || op_flags_in == Py_None) {
        for (iop = 0; iop < nop; ++iop) {





            if (op[iop] == ((void*)0)) {
                op_flags[iop] = NPY_ITER_WRITEONLY | NPY_ITER_ALLOCATE;
            }
            else {
                op_flags[iop] = NPY_ITER_READONLY;
            }
        }
    }
    else if (npyiter_convert_op_flags_array(op_flags_in,
                                      op_flags, nop) != 1) {
        for (iop = 0; iop < nop; ++iop) {
            Py_XDECREF(op[iop]);
        }
        *nop_out = 0;
        return 0;
    }


    for (iop = 0; iop < nop; ++iop) {
        if (op[iop] != ((void*)0)) {
            PyArrayObject *ao;
            int fromanyflags = 0;

            if (op_flags[iop]&(NPY_ITER_READWRITE|NPY_ITER_WRITEONLY)) {
                fromanyflags |= NPY_ARRAY_WRITEBACKIFCOPY;
            }
            ao = (PyArrayObject *)PyArray_FROM_OF((PyObject *)op[iop],
                                                  fromanyflags);
            if (ao == ((void*)0)) {
                if (PyErr_Occurred() &&
                            PyErr_ExceptionMatches(PyExc_TypeError)) {
                    PyErr_SetString(PyExc_TypeError,
                            "Iterator operand is flagged as writeable, "
                            "but is an object which cannot be written "
                            "back to via WRITEBACKIFCOPY");
                }
                for (iop = 0; iop < nop; ++iop) {
                    Py_DECREF(op[iop]);
                }
                *nop_out = 0;
                return 0;
            }
            Py_DECREF(op[iop]);
            op[iop] = ao;
        }
    }

    return 1;
}
