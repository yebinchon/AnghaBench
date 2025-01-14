
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int npyiter_opitflags ;
typedef scalar_t__ npy_intp ;
struct TYPE_10__ {int byteorder; } ;
typedef TYPE_1__ PyArray_Descr ;
typedef int PyArrayObject ;


 int NPY_IT_DBG_PRINT (char*) ;
 int NPY_MAXARGS ;
 int NPY_NATIVE ;
 int const NPY_OP_ITFLAG_READ ;
 TYPE_1__* PyArray_DescrNewByteorder (TYPE_1__*,int ) ;
 scalar_t__ PyArray_ISNBO (int ) ;
 scalar_t__ PyArray_NDIM (int *) ;
 TYPE_1__* PyArray_ResultType (scalar_t__,int **,scalar_t__,TYPE_1__**) ;
 int Py_INCREF (TYPE_1__*) ;

__attribute__((used)) static PyArray_Descr *
npyiter_get_common_dtype(int nop, PyArrayObject **op,
                        const npyiter_opitflags *op_itflags, PyArray_Descr **op_dtype,
                        PyArray_Descr **op_request_dtypes,
                        int only_inputs)
{
    int iop;
    npy_intp narrs = 0, ndtypes = 0;
    PyArrayObject *arrs[NPY_MAXARGS];
    PyArray_Descr *dtypes[NPY_MAXARGS];
    PyArray_Descr *ret;

    NPY_IT_DBG_PRINT("Iterator: Getting a common data type from operands\n");

    for (iop = 0; iop < nop; ++iop) {
        if (op_dtype[iop] != ((void*)0) &&
                    (!only_inputs || (op_itflags[iop] & NPY_OP_ITFLAG_READ))) {

            if ((op_request_dtypes == ((void*)0) ||
                            op_request_dtypes[iop] == ((void*)0)) &&
                                            PyArray_NDIM(op[iop]) == 0) {
                arrs[narrs++] = op[iop];
            }

            else {
                dtypes[ndtypes++] = op_dtype[iop];
            }
        }
    }

    if (narrs == 0) {
        npy_intp i;
        ret = dtypes[0];
        for (i = 1; i < ndtypes; ++i) {
            if (ret != dtypes[i])
                break;
        }
        if (i == ndtypes) {
            if (ndtypes == 1 || PyArray_ISNBO(ret->byteorder)) {
                Py_INCREF(ret);
            }
            else {
                ret = PyArray_DescrNewByteorder(ret, NPY_NATIVE);
            }
        }
        else {
            ret = PyArray_ResultType(narrs, arrs, ndtypes, dtypes);
        }
    }
    else {
        ret = PyArray_ResultType(narrs, arrs, ndtypes, dtypes);
    }

    return ret;
}
