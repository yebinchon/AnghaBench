
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_1__ ;


typedef int npyiter_opitflags ;
typedef int npy_uint32 ;
typedef scalar_t__ npy_intp ;
struct TYPE_25__ {scalar_t__ elsize; } ;
typedef int PyTypeObject ;
typedef TYPE_1__ PyArray_Descr ;
typedef TYPE_1__ PyArrayObject ;
typedef int NpyIter_BufferData ;
typedef int NpyIter_AxisData ;
typedef int NpyIter ;


 scalar_t__ IsUintAligned (TYPE_1__*) ;
 scalar_t__ NAD_SHAPE (int *) ;
 void** NAD_STRIDES (int *) ;
 void** NBF_STRIDES (int *) ;
 int NIT_ADVANCE_AXISDATA (int *,int) ;
 int * NIT_AXISDATA (int *) ;
 scalar_t__ NIT_AXISDATA_SIZEOF (int,int,int) ;
 int * NIT_BUFFERDATA (int *) ;
 int NIT_ITFLAGS (int *) ;
 int NIT_NDIM (int *) ;
 int NIT_NOP (int *) ;
 TYPE_1__** NIT_OPERANDS (int *) ;
 int const NPY_ITER_CONTIG ;
 int const NPY_ITER_COPY ;
 int NPY_ITER_COPY_IF_OVERLAP ;
 int const NPY_ITER_NO_SUBTYPE ;
 int const NPY_ITER_OVERLAP_ASSUME_ELEMENTWISE ;
 int const NPY_ITER_UPDATEIFCOPY ;
 int NPY_ITFLAG_BUFFER ;
 int NPY_IT_DBG_PRINT (char*) ;
 int NPY_OP_ITFLAG_ALIGNED ;
 int NPY_OP_ITFLAG_BUFNEVER ;
 int NPY_OP_ITFLAG_CAST ;
 int NPY_OP_ITFLAG_FORCECOPY ;
 int NPY_OP_ITFLAG_HAS_WRITEBACK ;
 int NPY_OP_ITFLAG_READ ;
 int NPY_OP_ITFLAG_REDUCE ;
 int NPY_OP_ITFLAG_WRITE ;
 int NPY_OP_ITFLAG_WRITEMASKED ;
 scalar_t__ PyArray_BYTES (TYPE_1__*) ;
 scalar_t__ PyArray_CompareLists (int *,int *,scalar_t__) ;
 scalar_t__ PyArray_CopyInto (TYPE_1__*,TYPE_1__*) ;
 int PyArray_DATA (TYPE_1__*) ;
 scalar_t__ PyArray_DESCR (TYPE_1__*) ;
 int * PyArray_DIMS (TYPE_1__*) ;
 scalar_t__ PyArray_NDIM (TYPE_1__*) ;
 scalar_t__ PyArray_NewFromDescr (int *,TYPE_1__*,int ,int *,int *,int *,int ,int *) ;
 int * PyArray_STRIDES (TYPE_1__*) ;
 scalar_t__ PyArray_SetWritebackIfCopyBase (TYPE_1__*,TYPE_1__*) ;
 int PyArray_Type ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int Py_DECREF (TYPE_1__*) ;
 int Py_INCREF (TYPE_1__*) ;
 int check_mask_for_writemasked_reduction (int *,int) ;
 TYPE_1__* npyiter_new_temp_array (int *,int *,int,int*,int,int *,TYPE_1__*,int*) ;
 int npyiter_replace_axisdata (int *,int,TYPE_1__*,int,int ,int*) ;
 scalar_t__ solve_may_have_internal_overlap (TYPE_1__*,int) ;
 int solve_may_share_memory (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static int
npyiter_allocate_arrays(NpyIter *iter,
                        npy_uint32 flags,
                        PyArray_Descr **op_dtype, PyTypeObject *subtype,
                        const npy_uint32 *op_flags, npyiter_opitflags *op_itflags,
                        int **op_axes)
{
    npy_uint32 itflags = NIT_ITFLAGS(iter);
    int idim, ndim = NIT_NDIM(iter);
    int iop, nop = NIT_NOP(iter);

    int check_writemasked_reductions = 0;

    NpyIter_BufferData *bufferdata = ((void*)0);
    PyArrayObject **op = NIT_OPERANDS(iter);

    if (itflags & NPY_ITFLAG_BUFFER) {
        bufferdata = NIT_BUFFERDATA(iter);
    }

    if (flags & NPY_ITER_COPY_IF_OVERLAP) {
        for (iop = 0; iop < nop; ++iop) {
            int may_share_memory = 0;
            int iother;

            if (op[iop] == ((void*)0)) {

                continue;
            }

            if (!(op_itflags[iop] & NPY_OP_ITFLAG_WRITE)) {





                continue;
            }

            for (iother = 0; iother < nop; ++iother) {
                if (iother == iop || op[iother] == ((void*)0)) {
                    continue;
                }

                if (!(op_itflags[iother] & NPY_OP_ITFLAG_READ)) {

                    continue;
                }

                if (op_itflags[iother] & NPY_OP_ITFLAG_FORCECOPY) {

                    continue;
                }
                if ((op_flags[iop] & NPY_ITER_OVERLAP_ASSUME_ELEMENTWISE) &&
                    (op_flags[iother] & NPY_ITER_OVERLAP_ASSUME_ELEMENTWISE) &&
                    PyArray_BYTES(op[iop]) == PyArray_BYTES(op[iother]) &&
                    PyArray_NDIM(op[iop]) == PyArray_NDIM(op[iother]) &&
                    PyArray_CompareLists(PyArray_DIMS(op[iop]),
                                         PyArray_DIMS(op[iother]),
                                         PyArray_NDIM(op[iop])) &&
                    PyArray_CompareLists(PyArray_STRIDES(op[iop]),
                                         PyArray_STRIDES(op[iother]),
                                         PyArray_NDIM(op[iop])) &&
                    PyArray_DESCR(op[iop]) == PyArray_DESCR(op[iother]) &&
                    solve_may_have_internal_overlap(op[iop], 1) == 0) {

                    continue;
                }





                may_share_memory = solve_may_share_memory(op[iop],
                                                          op[iother],
                                                          1);

                if (may_share_memory) {
                    op_itflags[iop] |= NPY_OP_ITFLAG_FORCECOPY;
                    break;
                }
            }
        }
    }

    for (iop = 0; iop < nop; ++iop) {





        if ((op_itflags[iop] &
                (NPY_OP_ITFLAG_WRITEMASKED | NPY_OP_ITFLAG_REDUCE)) ==
                        (NPY_OP_ITFLAG_WRITEMASKED | NPY_OP_ITFLAG_REDUCE)) {
            check_writemasked_reductions = 1;
        }


        if (op[iop] == ((void*)0)) {
            PyArrayObject *out;
            PyTypeObject *op_subtype;
            int ondim = ndim;


            op_subtype = (op_flags[iop] & NPY_ITER_NO_SUBTYPE) ?
                                                &PyArray_Type : subtype;


            out = npyiter_new_temp_array(iter, op_subtype,
                                        flags, &op_itflags[iop],
                                        ondim,
                                        ((void*)0),
                                        op_dtype[iop],
                                        op_axes ? op_axes[iop] : ((void*)0));
            if (out == ((void*)0)) {
                return 0;
            }

            op[iop] = out;





            npyiter_replace_axisdata(iter, iop, op[iop], ondim,
                    PyArray_DATA(op[iop]), op_axes ? op_axes[iop] : ((void*)0));





            if (IsUintAligned(out)) {
                op_itflags[iop] |= NPY_OP_ITFLAG_ALIGNED;
            }

            op_itflags[iop] &= ~NPY_OP_ITFLAG_CAST;
        }





        else if ((op_itflags[iop] & (NPY_OP_ITFLAG_CAST |
                         NPY_OP_ITFLAG_READ |
                         NPY_OP_ITFLAG_WRITE)) == (NPY_OP_ITFLAG_CAST |
                                                   NPY_OP_ITFLAG_READ) &&
                          PyArray_NDIM(op[iop]) == 0) {
            PyArrayObject *temp;
            Py_INCREF(op_dtype[iop]);
            temp = (PyArrayObject *)PyArray_NewFromDescr(
                                        &PyArray_Type, op_dtype[iop],
                                        0, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
            if (temp == ((void*)0)) {
                return 0;
            }
            if (PyArray_CopyInto(temp, op[iop]) != 0) {
                Py_DECREF(temp);
                return 0;
            }
            Py_DECREF(op[iop]);
            op[iop] = temp;





            npyiter_replace_axisdata(iter, iop, op[iop], 0,
                    PyArray_DATA(op[iop]), ((void*)0));





            if (IsUintAligned(temp)) {
                op_itflags[iop] |= NPY_OP_ITFLAG_ALIGNED;
            }




            op_itflags[iop] |= NPY_OP_ITFLAG_BUFNEVER;
            op_itflags[iop] &= ~NPY_OP_ITFLAG_CAST;
            if (itflags & NPY_ITFLAG_BUFFER) {
                NBF_STRIDES(bufferdata)[iop] = 0;
            }
        }





        else if (((op_itflags[iop] & NPY_OP_ITFLAG_CAST) &&
                        (op_flags[iop] &
                        (NPY_ITER_COPY|NPY_ITER_UPDATEIFCOPY))) ||
                 (op_itflags[iop] & NPY_OP_ITFLAG_FORCECOPY)) {
            PyArrayObject *temp;
            int ondim = PyArray_NDIM(op[iop]);


            temp = npyiter_new_temp_array(iter, &PyArray_Type,
                                        flags, &op_itflags[iop],
                                        ondim,
                                        PyArray_DIMS(op[iop]),
                                        op_dtype[iop],
                                        op_axes ? op_axes[iop] : ((void*)0));
            if (temp == ((void*)0)) {
                return 0;
            }






            if (op_itflags[iop] & NPY_OP_ITFLAG_READ) {
                if (PyArray_CopyInto(temp, op[iop]) != 0) {
                    Py_DECREF(temp);
                    return 0;
                }
            }


            if (op_itflags[iop] & NPY_OP_ITFLAG_WRITE) {
                Py_INCREF(op[iop]);
                if (PyArray_SetWritebackIfCopyBase(temp, op[iop]) < 0) {
                    Py_DECREF(temp);
                    return 0;
                }
                op_itflags[iop] |= NPY_OP_ITFLAG_HAS_WRITEBACK;
            }

            Py_DECREF(op[iop]);
            op[iop] = temp;





            npyiter_replace_axisdata(iter, iop, op[iop], ondim,
                    PyArray_DATA(op[iop]), op_axes ? op_axes[iop] : ((void*)0));





            if (IsUintAligned(temp)) {
                op_itflags[iop] |= NPY_OP_ITFLAG_ALIGNED;
            }

            op_itflags[iop] &= ~NPY_OP_ITFLAG_CAST;
        }
        else {




            if ((op_itflags[iop] & NPY_OP_ITFLAG_CAST) &&
                                  !(itflags & NPY_ITFLAG_BUFFER)) {
                PyErr_SetString(PyExc_TypeError,
                        "Iterator operand required copying or buffering, "
                        "but neither copying nor buffering was enabled");
                return 0;
            }





            if (IsUintAligned(op[iop])) {
                op_itflags[iop] |= NPY_OP_ITFLAG_ALIGNED;
            }
        }


        if (op_flags[iop] & NPY_ITER_CONTIG) {
            NpyIter_AxisData *axisdata = NIT_AXISDATA(iter);
            npy_intp stride = NAD_STRIDES(axisdata)[iop];

            if (stride != op_dtype[iop]->elsize) {
                NPY_IT_DBG_PRINT("Iterator: Setting NPY_OP_ITFLAG_CAST "
                                    "because of NPY_ITER_CONTIG\n");
                op_itflags[iop] |= NPY_OP_ITFLAG_CAST;
                if (!(itflags & NPY_ITFLAG_BUFFER)) {
                    PyErr_SetString(PyExc_TypeError,
                            "Iterator operand required buffering, "
                            "to be contiguous as requested, but "
                            "buffering is not enabled");
                    return 0;
                }
            }
        }






        if ((itflags & NPY_ITFLAG_BUFFER) &&
                                !(op_itflags[iop] & NPY_OP_ITFLAG_CAST)) {
            NpyIter_AxisData *axisdata = NIT_AXISDATA(iter);
            if (ndim <= 1) {
                op_itflags[iop] |= NPY_OP_ITFLAG_BUFNEVER;
                NBF_STRIDES(bufferdata)[iop] = NAD_STRIDES(axisdata)[iop];
            }
            else if (PyArray_NDIM(op[iop]) > 0) {
                npy_intp stride, shape, innerstride = 0, innershape;
                npy_intp sizeof_axisdata =
                                    NIT_AXISDATA_SIZEOF(itflags, ndim, nop);

                for (idim = 0; idim < ndim; ++idim) {
                    innershape = NAD_SHAPE(axisdata);
                    if (innershape != 1) {
                        innerstride = NAD_STRIDES(axisdata)[iop];
                        break;
                    }
                    NIT_ADVANCE_AXISDATA(axisdata, 1);
                }
                ++idim;
                NIT_ADVANCE_AXISDATA(axisdata, 1);

                for (; idim < ndim; ++idim) {
                    stride = NAD_STRIDES(axisdata)[iop];
                    shape = NAD_SHAPE(axisdata);
                    if (shape != 1) {




                        if (innerstride*innershape != stride) {
                            break;
                        }
                        else {
                            innershape *= shape;
                        }
                    }
                    NIT_ADVANCE_AXISDATA(axisdata, 1);
                }





                if (idim == ndim) {
                    op_itflags[iop] |= NPY_OP_ITFLAG_BUFNEVER;
                    NBF_STRIDES(bufferdata)[iop] = innerstride;
                }
            }
        }
    }

    if (check_writemasked_reductions) {
        for (iop = 0; iop < nop; ++iop) {





            if ((op_itflags[iop] &
                    (NPY_OP_ITFLAG_WRITEMASKED | NPY_OP_ITFLAG_REDUCE)) ==
                        (NPY_OP_ITFLAG_WRITEMASKED | NPY_OP_ITFLAG_REDUCE)) {
                if (!check_mask_for_writemasked_reduction(iter, iop)) {
                    return 0;
                }
            }
        }
    }

    return 1;
}
