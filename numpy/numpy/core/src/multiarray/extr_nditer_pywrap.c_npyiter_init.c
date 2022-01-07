
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int op_request_dtypes ;
typedef int op_axes ;
typedef int npy_uint32 ;
struct TYPE_8__ {int started; int finished; int * iter; } ;
struct TYPE_7__ {int len; int * ptr; int member_1; int * member_0; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Dims ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;
typedef TYPE_2__ NewNpyArrayIterObject ;
typedef int NPY_ORDER ;
typedef int NPY_CASTING ;


 int NPY_KEEPORDER ;
 int NPY_MAXARGS ;
 int NPY_MAXDIMS ;
 int NPY_SAFE_CASTING ;
 int * NpyIter_AdvancedNew (int,int**,int ,int ,int ,int *,int**,int,int**,int *,int) ;
 scalar_t__ NpyIter_GetIterSize (int *) ;
 int NpyIter_GlobalFlagsConverter ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int ,int *,int **,int **,int ,int *,int ,int *,int **,int ,TYPE_1__*,int*) ;
 int PyArray_CastingConverter ;
 int PyArray_IntpConverter ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * Py_None ;
 int Py_XDECREF (int*) ;
 int memset (int**,int ,int) ;
 int npy_free_cache_dim_obj (TYPE_1__) ;
 scalar_t__ npyiter_cache_values (TYPE_2__*) ;
 int npyiter_convert_dtypes (int *,int**,int) ;
 int npyiter_convert_op_axes (int *,int,int**,int*) ;
 int npyiter_convert_ops (int *,int *,int**,int *,int*) ;
 int npyiter_order_converter ;

__attribute__((used)) static int
npyiter_init(NewNpyArrayIterObject *self, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"op", "flags", "op_flags", "op_dtypes",
                             "order", "casting", "op_axes", "itershape",
                             "buffersize",
                             ((void*)0)};

    PyObject *op_in = ((void*)0), *op_flags_in = ((void*)0),
                *op_dtypes_in = ((void*)0), *op_axes_in = ((void*)0);

    int iop, nop = 0;
    PyArrayObject *op[NPY_MAXARGS];
    npy_uint32 flags = 0;
    NPY_ORDER order = NPY_KEEPORDER;
    NPY_CASTING casting = NPY_SAFE_CASTING;
    npy_uint32 op_flags[NPY_MAXARGS];
    PyArray_Descr *op_request_dtypes[NPY_MAXARGS];
    int oa_ndim = -1;
    int op_axes_arrays[NPY_MAXARGS][NPY_MAXDIMS];
    int *op_axes[NPY_MAXARGS];
    PyArray_Dims itershape = {((void*)0), 0};
    int buffersize = 0;

    if (self->iter != ((void*)0)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator was already initialized");
        return -1;
    }

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O|O&OOO&O&OO&i:nditer", kwlist,
                    &op_in,
                    NpyIter_GlobalFlagsConverter, &flags,
                    &op_flags_in,
                    &op_dtypes_in,
                    npyiter_order_converter, &order,
                    PyArray_CastingConverter, &casting,
                    &op_axes_in,
                    PyArray_IntpConverter, &itershape,
                    &buffersize)) {
        npy_free_cache_dim_obj(itershape);
        return -1;
    }


    memset(op_request_dtypes, 0, sizeof(op_request_dtypes));


    if (npyiter_convert_ops(op_in, op_flags_in, op, op_flags, &nop)
                                                        != 1) {
        goto fail;
    }


    if (op_dtypes_in != ((void*)0) && op_dtypes_in != Py_None &&
            npyiter_convert_dtypes(op_dtypes_in,
                                   op_request_dtypes, nop) != 1) {
        goto fail;
    }


    if (op_axes_in != ((void*)0) && op_axes_in != Py_None) {

        for (iop = 0; iop < nop; ++iop) {
            op_axes[iop] = op_axes_arrays[iop];
        }

        if (npyiter_convert_op_axes(op_axes_in, nop,
                                    op_axes, &oa_ndim) != 1) {
            goto fail;
        }
    }

    if (itershape.len > 0) {
        if (oa_ndim == -1) {
            oa_ndim = itershape.len;
            memset(op_axes, 0, sizeof(op_axes[0]) * nop);
        }
        else if (oa_ndim != itershape.len) {
            PyErr_SetString(PyExc_ValueError,
                        "'op_axes' and 'itershape' must have the same number "
                        "of entries equal to the iterator ndim");
            goto fail;
        }
    }
    else if (itershape.ptr != ((void*)0)) {
        npy_free_cache_dim_obj(itershape);
        itershape.ptr = ((void*)0);
    }

    self->iter = NpyIter_AdvancedNew(nop, op, flags, order, casting, op_flags,
                                  op_request_dtypes,
                                  oa_ndim, oa_ndim >= 0 ? op_axes : ((void*)0),
                                  itershape.ptr,
                                  buffersize);

    if (self->iter == ((void*)0)) {
        goto fail;
    }


    if (npyiter_cache_values(self) < 0) {
        goto fail;
    }

    if (NpyIter_GetIterSize(self->iter) == 0) {
        self->started = 1;
        self->finished = 1;
    }
    else {
        self->started = 0;
        self->finished = 0;
    }

    npy_free_cache_dim_obj(itershape);


    for (iop = 0; iop < nop; ++iop) {
        Py_XDECREF(op[iop]);
        Py_XDECREF(op_request_dtypes[iop]);
    }

    return 0;

fail:
    npy_free_cache_dim_obj(itershape);
    for (iop = 0; iop < nop; ++iop) {
        Py_XDECREF(op[iop]);
        Py_XDECREF(op_request_dtypes[iop]);
    }
    return -1;
}
