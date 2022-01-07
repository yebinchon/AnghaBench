
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ufunc_full_args ;
typedef int npy_uint32 ;
typedef int npy_intp ;
struct TYPE_6__ {int nin; int nout; scalar_t__ (* legacy_inner_loop_selector ) (TYPE_1__*,int **,int *,void**,int*) ;} ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyUFuncGenericFunction ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;
typedef scalar_t__ NPY_ORDER ;


 scalar_t__ NPY_ANYORDER ;
 int NPY_ARRAY_F_CONTIGUOUS ;
 scalar_t__ NPY_KEEPORDER ;
 int NPY_UF_DBG_PRINT (char*) ;
 int PyArray_DIMS (int *) ;
 scalar_t__ PyArray_ISFORTRAN (int *) ;
 scalar_t__ PyArray_NDIM (int *) ;
 scalar_t__ PyArray_NewFromDescr (int *,int *,scalar_t__,int ,int *,int *,int ,int *) ;
 scalar_t__ PyArray_TRIVIALLY_ITERABLE (int *) ;
 int PyArray_TRIVIALLY_ITERABLE_OP_NOREAD ;
 int PyArray_TRIVIALLY_ITERABLE_OP_READ ;
 scalar_t__ PyArray_TRIVIALLY_ITERABLE_PAIR (int *,int *,int ,int ) ;
 scalar_t__ PyArray_TRIVIALLY_ITERABLE_TRIPLE (int *,int *,int *,int ,int ,int ) ;
 int PyArray_Type ;
 int Py_INCREF (int *) ;
 scalar_t__ _does_loop_use_arrays (void*) ;
 scalar_t__ iterator_loop (TYPE_1__*,int **,int **,scalar_t__,int,int **,int ,int ,void*,int *) ;
 scalar_t__ prepare_ufunc_output (TYPE_1__*,int **,int *,int ,int ) ;
 scalar_t__ stub1 (TYPE_1__*,int **,int *,void**,int*) ;
 int trivial_three_operand_loop (int **,int ,void*) ;
 int trivial_two_operand_loop (int **,int ,void*) ;

__attribute__((used)) static int
execute_legacy_ufunc_loop(PyUFuncObject *ufunc,
                    int trivial_loop_ok,
                    PyArrayObject **op,
                    PyArray_Descr **dtypes,
                    NPY_ORDER order,
                    npy_intp buffersize,
                    PyObject **arr_prep,
                    ufunc_full_args full_args,
                    npy_uint32 *op_flags)
{
    npy_intp nin = ufunc->nin, nout = ufunc->nout;
    PyUFuncGenericFunction innerloop;
    void *innerloopdata;
    int needs_api = 0;

    if (ufunc->legacy_inner_loop_selector(ufunc, dtypes,
                    &innerloop, &innerloopdata, &needs_api) < 0) {
        return -1;
    }

    if (_does_loop_use_arrays(innerloopdata)) {
        innerloopdata = (void*)op;
    }


    if (trivial_loop_ok) {
        if (nin == 1 && nout == 1) {
            if (op[1] == ((void*)0) &&
                        (order == NPY_ANYORDER || order == NPY_KEEPORDER) &&
                        PyArray_TRIVIALLY_ITERABLE(op[0])) {
                Py_INCREF(dtypes[1]);
                op[1] = (PyArrayObject *)PyArray_NewFromDescr(&PyArray_Type,
                             dtypes[1],
                             PyArray_NDIM(op[0]),
                             PyArray_DIMS(op[0]),
                             ((void*)0), ((void*)0),
                             PyArray_ISFORTRAN(op[0]) ?
                                            NPY_ARRAY_F_CONTIGUOUS : 0,
                             ((void*)0));
                if (op[1] == ((void*)0)) {
                    return -1;
                }


                if (prepare_ufunc_output(ufunc, &op[1],
                                    arr_prep[0], full_args, 0) < 0) {
                    return -1;
                }

                NPY_UF_DBG_PRINT("trivial 1 input with allocated output\n");
                trivial_two_operand_loop(op, innerloop, innerloopdata);

                return 0;
            }
            else if (op[1] != ((void*)0) &&
                        PyArray_NDIM(op[1]) >= PyArray_NDIM(op[0]) &&
                        PyArray_TRIVIALLY_ITERABLE_PAIR(op[0], op[1],
                                                        PyArray_TRIVIALLY_ITERABLE_OP_READ,
                                                        PyArray_TRIVIALLY_ITERABLE_OP_NOREAD)) {


                if (prepare_ufunc_output(ufunc, &op[1],
                                    arr_prep[0], full_args, 0) < 0) {
                    return -1;
                }

                NPY_UF_DBG_PRINT("trivial 1 input\n");
                trivial_two_operand_loop(op, innerloop, innerloopdata);

                return 0;
            }
        }
        else if (nin == 2 && nout == 1) {
            if (op[2] == ((void*)0) &&
                        (order == NPY_ANYORDER || order == NPY_KEEPORDER) &&
                        PyArray_TRIVIALLY_ITERABLE_PAIR(op[0], op[1],
                                                        PyArray_TRIVIALLY_ITERABLE_OP_READ,
                                                        PyArray_TRIVIALLY_ITERABLE_OP_READ)) {
                PyArrayObject *tmp;




                if (PyArray_NDIM(op[0]) >= PyArray_NDIM(op[1])) {
                    tmp = op[0];
                }
                else {
                    tmp = op[1];
                }
                Py_INCREF(dtypes[2]);
                op[2] = (PyArrayObject *)PyArray_NewFromDescr(&PyArray_Type,
                                 dtypes[2],
                                 PyArray_NDIM(tmp),
                                 PyArray_DIMS(tmp),
                                 ((void*)0), ((void*)0),
                                 PyArray_ISFORTRAN(tmp) ?
                                                NPY_ARRAY_F_CONTIGUOUS : 0,
                                 ((void*)0));
                if (op[2] == ((void*)0)) {
                    return -1;
                }


                if (prepare_ufunc_output(ufunc, &op[2],
                                    arr_prep[0], full_args, 0) < 0) {
                    return -1;
                }

                NPY_UF_DBG_PRINT("trivial 2 input with allocated output\n");
                trivial_three_operand_loop(op, innerloop, innerloopdata);

                return 0;
            }
            else if (op[2] != ((void*)0) &&
                    PyArray_NDIM(op[2]) >= PyArray_NDIM(op[0]) &&
                    PyArray_NDIM(op[2]) >= PyArray_NDIM(op[1]) &&
                    PyArray_TRIVIALLY_ITERABLE_TRIPLE(op[0], op[1], op[2],
                                                      PyArray_TRIVIALLY_ITERABLE_OP_READ,
                                                      PyArray_TRIVIALLY_ITERABLE_OP_READ,
                                                      PyArray_TRIVIALLY_ITERABLE_OP_NOREAD)) {


                if (prepare_ufunc_output(ufunc, &op[2],
                                    arr_prep[0], full_args, 0) < 0) {
                    return -1;
                }

                NPY_UF_DBG_PRINT("trivial 2 input\n");
                trivial_three_operand_loop(op, innerloop, innerloopdata);

                return 0;
            }
        }
    }






    NPY_UF_DBG_PRINT("iterator loop\n");
    if (iterator_loop(ufunc, op, dtypes, order,
                    buffersize, arr_prep, full_args,
                    innerloop, innerloopdata, op_flags) < 0) {
        return -1;
    }

    return 0;
}
