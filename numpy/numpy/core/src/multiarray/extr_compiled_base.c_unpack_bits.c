
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_uint8 ;
typedef int npy_uint64 ;
typedef int npy_intp ;
struct TYPE_3__ {int member_1; int* ptr; int * member_0; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Dims ;
typedef int PyArrayObject ;
typedef int PyArrayIterObject ;


 int NPY_BEGIN_THREADS_DEF ;
 int NPY_BEGIN_THREADS_THRESHOLDED (int) ;
 int NPY_CORDER ;
 int NPY_END_THREADS ;
 int NPY_MAXDIMS ;
 scalar_t__ NPY_UBYTE ;
 scalar_t__ PyArray_CheckAxis (int *,int*,int ) ;
 int PyArray_DIM (int *,int) ;
 int PyArray_DescrFromType (scalar_t__) ;
 scalar_t__ PyArray_FROM_O (int *) ;
 int PyArray_ISFORTRAN (int *) ;
 void* PyArray_ITER_DATA (int *) ;
 int PyArray_ITER_NEXT (int *) ;
 scalar_t__ PyArray_ITER_NOTDONE (int *) ;
 scalar_t__ PyArray_IterAllButAxis (int *,int*) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_NewFromDescr (int ,int ,int,int*,int *,int *,int ,int *) ;
 scalar_t__ PyArray_Newshape (int *,TYPE_1__*,int ) ;
 int PyArray_PyIntAsIntp (int *) ;
 int PyArray_STRIDE (int *,int) ;
 int PyArray_Size (int *) ;
 scalar_t__ PyArray_TYPE (int *) ;
 int PyErr_Format (int ,char*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 int Py_DECREF (int *) ;
 int * Py_None ;
 int Py_TYPE (int *) ;
 int Py_XDECREF (int *) ;
 scalar_t__ error_converting (int) ;
 int memcpy (char*,int *,int) ;
 int memset (char*,int ,int) ;
 int npy_bswap8 (int ) ;

__attribute__((used)) static PyObject *
unpack_bits(PyObject *input, int axis, PyObject *count_obj, char order)
{
    static int unpack_init = 0;




    static union {
        npy_uint8 bytes[8];
        npy_uint64 uint64;
    } unpack_lookup_big[256];
    PyArrayObject *inp;
    PyArrayObject *new = ((void*)0);
    PyArrayObject *out = ((void*)0);
    npy_intp outdims[NPY_MAXDIMS];
    int i;
    PyArrayIterObject *it, *ot;
    npy_intp count, in_n, in_tail, out_pad, in_stride, out_stride;
    NPY_BEGIN_THREADS_DEF;

    inp = (PyArrayObject *)PyArray_FROM_O(input);

    if (inp == ((void*)0)) {
        return ((void*)0);
    }
    if (PyArray_TYPE(inp) != NPY_UBYTE) {
        PyErr_SetString(PyExc_TypeError,
                "Expected an input array of unsigned byte data type");
        Py_DECREF(inp);
        goto fail;
    }

    new = (PyArrayObject *)PyArray_CheckAxis(inp, &axis, 0);
    Py_DECREF(inp);
    if (new == ((void*)0)) {
        return ((void*)0);
    }

    if (PyArray_NDIM(new) == 0) {

        PyArrayObject *temp;
        PyArray_Dims newdim = {((void*)0), 1};
        npy_intp shape = 1;

        newdim.ptr = &shape;
        temp = (PyArrayObject *)PyArray_Newshape(new, &newdim, NPY_CORDER);
        Py_DECREF(new);
        if (temp == ((void*)0)) {
            return ((void*)0);
        }
        new = temp;
    }


    for (i = 0; i < PyArray_NDIM(new); i++) {
        outdims[i] = PyArray_DIM(new, i);
    }


    outdims[axis] *= 8;
    if (count_obj != Py_None) {
        count = PyArray_PyIntAsIntp(count_obj);
        if (error_converting(count)) {
            goto fail;
        }
        if (count < 0) {
            outdims[axis] += count;
            if (outdims[axis] < 0) {
                PyErr_Format(PyExc_ValueError,
                             "-count larger than number of elements");
                goto fail;
            }
        }
        else {
            outdims[axis] = count;
        }
    }


    out = (PyArrayObject *)PyArray_NewFromDescr(
            Py_TYPE(new), PyArray_DescrFromType(NPY_UBYTE),
            PyArray_NDIM(new), outdims, ((void*)0), ((void*)0),
            PyArray_ISFORTRAN(new), ((void*)0));
    if (out == ((void*)0)) {
        goto fail;
    }


    it = (PyArrayIterObject *)PyArray_IterAllButAxis((PyObject *)new, &axis);
    ot = (PyArrayIterObject *)PyArray_IterAllButAxis((PyObject *)out, &axis);
    if (it == ((void*)0) || ot == ((void*)0)) {
        Py_XDECREF(it);
        Py_XDECREF(ot);
        goto fail;
    }





    if (unpack_init == 0) {
        npy_intp j;
        for (j=0; j < 256; j++) {
            npy_intp k;
            for (k=0; k < 8; k++) {
                npy_uint8 v = (j & (1 << k)) == (1 << k);
                unpack_lookup_big[j].bytes[7 - k] = v;
            }
        }
        unpack_init = 1;
    }

    count = PyArray_DIM(new, axis) * 8;
    if (outdims[axis] > count) {
        in_n = count / 8;
        in_tail = 0;
        out_pad = outdims[axis] - count;
    }
    else {
        in_n = outdims[axis] / 8;
        in_tail = outdims[axis] % 8;
        out_pad = 0;
    }

    in_stride = PyArray_STRIDE(new, axis);
    out_stride = PyArray_STRIDE(out, axis);

    NPY_BEGIN_THREADS_THRESHOLDED(PyArray_Size((PyObject *)out) / 8);

    while (PyArray_ITER_NOTDONE(it)) {
        npy_intp index;
        unsigned const char *inptr = PyArray_ITER_DATA(it);
        char *outptr = PyArray_ITER_DATA(ot);

        if (out_stride == 1) {

            if (order == 'b') {
                for (index = 0; index < in_n; index++) {
                    npy_uint64 v = unpack_lookup_big[*inptr].uint64;
                    memcpy(outptr, &v, 8);
                    outptr += 8;
                    inptr += in_stride;
                }
            }
            else {
                for (index = 0; index < in_n; index++) {
                    npy_uint64 v = unpack_lookup_big[*inptr].uint64;
                    if (order != 'b') {
                        v = npy_bswap8(v);
                    }
                    memcpy(outptr, &v, 8);
                    outptr += 8;
                    inptr += in_stride;
                }
            }

            if (in_tail) {
                npy_uint64 v = unpack_lookup_big[*inptr].uint64;
                if (order != 'b') {
                    v = npy_bswap8(v);
                }
                memcpy(outptr, &v, in_tail);
            }

            else if (out_pad) {
                memset(outptr, 0, out_pad);
            }
        }
        else {
            if (order == 'b') {
                for (index = 0; index < in_n; index++) {
                    for (i = 0; i < 8; i++) {
                        *outptr = ((*inptr & (128 >> i)) != 0);
                        outptr += out_stride;
                    }
                    inptr += in_stride;
                }

                for (i = 0; i < in_tail; i++) {
                    *outptr = ((*inptr & (128 >> i)) != 0);
                    outptr += out_stride;
                }
            }
            else {
                for (index = 0; index < in_n; index++) {
                    for (i = 0; i < 8; i++) {
                        *outptr = ((*inptr & (1 << i)) != 0);
                        outptr += out_stride;
                    }
                    inptr += in_stride;
                }

                for (i = 0; i < in_tail; i++) {
                    *outptr = ((*inptr & (1 << i)) != 0);
                    outptr += out_stride;
                }
            }

            for (index = 0; index < out_pad; index++) {
                *outptr = 0;
                outptr += out_stride;
            }
        }

        PyArray_ITER_NEXT(it);
        PyArray_ITER_NEXT(ot);
    }
    NPY_END_THREADS;

    Py_DECREF(it);
    Py_DECREF(ot);

    Py_DECREF(new);
    return (PyObject *)out;

fail:
    Py_XDECREF(new);
    Py_XDECREF(out);
    return ((void*)0);
}
