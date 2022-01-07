
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t npy_intp ;
typedef int PyObject ;
typedef int PyArray_Descr ;


 int PyArray_DescrConverter2 (int *,int **) ;
 int PyErr_Clear () ;
 int PyList_Check (int *) ;
 int * PySequence_GetItem (int *,size_t) ;
 size_t PySequence_Size (int *) ;
 int PyTuple_Check (int *) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;
 int Py_XINCREF (int *) ;

__attribute__((used)) static int
npyiter_convert_dtypes(PyObject *op_dtypes_in,
                        PyArray_Descr **op_dtypes,
                        npy_intp nop)
{
    npy_intp iop;





    if ((!PyTuple_Check(op_dtypes_in) && !PyList_Check(op_dtypes_in)) ||
                                    PySequence_Size(op_dtypes_in) != nop) {
        goto try_single_dtype;
    }

    for (iop = 0; iop < nop; ++iop) {
        PyObject *dtype = PySequence_GetItem(op_dtypes_in, iop);
        if (dtype == ((void*)0)) {
            npy_intp i;
            for (i = 0; i < iop; ++i ) {
                Py_XDECREF(op_dtypes[i]);
            }
            return 0;
        }


        if (PyArray_DescrConverter2(dtype, &op_dtypes[iop]) != 1) {
            npy_intp i;
            for (i = 0; i < iop; ++i ) {
                Py_XDECREF(op_dtypes[i]);
            }
            Py_DECREF(dtype);
            PyErr_Clear();
            goto try_single_dtype;
        }

        Py_DECREF(dtype);
    }

    return 1;

try_single_dtype:
    if (PyArray_DescrConverter2(op_dtypes_in, &op_dtypes[0]) == 1) {
        for (iop = 1; iop < nop; ++iop) {
            op_dtypes[iop] = op_dtypes[0];
            Py_XINCREF(op_dtypes[iop]);
        }
        return 1;
    }

    return 0;
}
