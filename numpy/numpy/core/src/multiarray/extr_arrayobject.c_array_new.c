
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ npy_longlong ;
typedef int npy_intp ;
struct TYPE_15__ {int len; int flags; int * base; int * ptr; } ;
struct TYPE_14__ {int elsize; } ;
struct TYPE_13__ {int* ptr; int len; int member_1; int * member_0; } ;
typedef int PyTypeObject ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Dims ;
typedef TYPE_2__ PyArray_Descr ;
typedef TYPE_3__ PyArray_Chunk ;
typedef int PyArrayObject ;
typedef scalar_t__ NPY_ORDER ;


 int NPY_ARRAY_F_CONTIGUOUS ;
 scalar_t__ NPY_CORDER ;
 int NPY_DEFAULT_TYPE ;
 scalar_t__ NPY_FORTRANORDER ;
 int NPY_ITEM_HASOBJECT ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int ,TYPE_1__*,int ,TYPE_2__**,int ,TYPE_3__*,scalar_t__*,int *,TYPE_1__*,int *,scalar_t__*) ;
 int PyArray_BufferConverter ;
 int PyArray_CheckStrides (int,int,int,int,int*,int*) ;
 int PyArray_DescrConverter ;
 TYPE_2__* PyArray_DescrFromType (int ) ;
 int PyArray_FillObjectArray (int *,int ) ;
 int PyArray_IntpConverter ;
 int PyArray_MultiplyList (int*,int) ;
 scalar_t__ PyArray_NewFromDescr_int (int *,TYPE_2__*,int,int*,int*,char*,int,int *,int *,int ,int) ;
 int PyArray_OrderConverter ;
 scalar_t__ PyDataType_FLAGCHK (TYPE_2__*,int ) ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 int Py_None ;
 int Py_XDECREF (TYPE_2__*) ;
 int npy_free_cache_dim_obj (TYPE_1__) ;

__attribute__((used)) static PyObject *
array_new(PyTypeObject *subtype, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"shape", "dtype", "buffer", "offset", "strides",
                             "order", ((void*)0)};
    PyArray_Descr *descr = ((void*)0);
    int itemsize;
    PyArray_Dims dims = {((void*)0), 0};
    PyArray_Dims strides = {((void*)0), 0};
    PyArray_Chunk buffer;
    npy_longlong offset = 0;
    NPY_ORDER order = NPY_CORDER;
    int is_f_order = 0;
    PyArrayObject *ret;

    buffer.ptr = ((void*)0);





    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O&|O&O&LO&O&:ndarray",
                                     kwlist, PyArray_IntpConverter,
                                     &dims,
                                     PyArray_DescrConverter,
                                     &descr,
                                     PyArray_BufferConverter,
                                     &buffer,
                                     &offset,
                                     &PyArray_IntpConverter,
                                     &strides,
                                     &PyArray_OrderConverter,
                                     &order)) {
        goto fail;
    }
    if (order == NPY_FORTRANORDER) {
        is_f_order = 1;
    }
    if (descr == ((void*)0)) {
        descr = PyArray_DescrFromType(NPY_DEFAULT_TYPE);
    }

    itemsize = descr->elsize;

    if (strides.ptr != ((void*)0)) {
        npy_intp nb, off;
        if (strides.len != dims.len) {
            PyErr_SetString(PyExc_ValueError,
                            "strides, if given, must be " "the same length as shape");

            goto fail;
        }

        if (buffer.ptr == ((void*)0)) {
            nb = 0;
            off = 0;
        }
        else {
            nb = buffer.len;
            off = (npy_intp) offset;
        }


        if (!PyArray_CheckStrides(itemsize, dims.len,
                                  nb, off,
                                  dims.ptr, strides.ptr)) {
            PyErr_SetString(PyExc_ValueError,
                            "strides is incompatible " "with shape of requested " "array and size of buffer");


            goto fail;
        }
    }

    if (buffer.ptr == ((void*)0)) {
        ret = (PyArrayObject *)
            PyArray_NewFromDescr_int(subtype, descr,
                                     (int)dims.len,
                                     dims.ptr,
                                     strides.ptr, ((void*)0), is_f_order, ((void*)0), ((void*)0),
                                     0, 1);
        if (ret == ((void*)0)) {
            descr = ((void*)0);
            goto fail;
        }
        if (PyDataType_FLAGCHK(descr, NPY_ITEM_HASOBJECT)) {

            PyArray_FillObjectArray(ret, Py_None);
            if (PyErr_Occurred()) {
                descr = ((void*)0);
                goto fail;
            }
        }
    }
    else {

        if (dims.len == 1 && dims.ptr[0] == -1) {
            dims.ptr[0] = (buffer.len-(npy_intp)offset) / itemsize;
        }
        else if ((strides.ptr == ((void*)0)) &&
                 (buffer.len < (offset + (((npy_intp)itemsize)*
                                          PyArray_MultiplyList(dims.ptr,
                                                               dims.len))))) {
            PyErr_SetString(PyExc_TypeError,
                            "buffer is too small for " "requested array");

            goto fail;
        }

        if (is_f_order) {
            buffer.flags |= NPY_ARRAY_F_CONTIGUOUS;
        }
        ret = (PyArrayObject *)PyArray_NewFromDescr_int(
                subtype, descr,
                dims.len, dims.ptr, strides.ptr, offset + (char *)buffer.ptr,
                buffer.flags, ((void*)0), buffer.base,
                0, 1);
        if (ret == ((void*)0)) {
            descr = ((void*)0);
            goto fail;
        }
    }

    npy_free_cache_dim_obj(dims);
    npy_free_cache_dim_obj(strides);
    return (PyObject *)ret;

 fail:
    Py_XDECREF(descr);
    npy_free_cache_dim_obj(dims);
    npy_free_cache_dim_obj(strides);
    return ((void*)0);
}
