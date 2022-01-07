
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_intp ;
typedef int npy_bool ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 int NPY_ARRAY_CARRAY ;
 int NPY_BEGIN_THREADS_DEF ;
 int NPY_BEGIN_THREADS_THRESHOLDED (scalar_t__) ;
 int NPY_BOOL ;
 int NPY_END_THREADS ;
 int NPY_INTP ;
 int NPY_MAXDIMS ;
 scalar_t__ PyArray_DATA (int *) ;
 scalar_t__* PyArray_DIMS (int *) ;
 int * PyArray_DescrFromType (int ) ;
 scalar_t__ PyArray_FromAny (int *,int *,int ,int ,int ,int *) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_NewFromDescr (int *,int *,int,scalar_t__*,int *,int *,int ,int *) ;
 scalar_t__ PyArray_SIZE (int *) ;
 int PyArray_Type ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;
 scalar_t__ count_boolean_trues (int,char*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
_nonzero_indices(PyObject *myBool, PyArrayObject **arrays)
{
    PyArray_Descr *typecode;
    PyArrayObject *ba = ((void*)0), *new = ((void*)0);
    int nd, j;
    npy_intp size, i, count;
    npy_bool *ptr;
    npy_intp coords[NPY_MAXDIMS], dims_m1[NPY_MAXDIMS];
    npy_intp *dptr[NPY_MAXDIMS];
    static npy_intp one = 1;
    NPY_BEGIN_THREADS_DEF;

    typecode=PyArray_DescrFromType(NPY_BOOL);
    ba = (PyArrayObject *)PyArray_FromAny(myBool, typecode, 0, 0,
                                          NPY_ARRAY_CARRAY, ((void*)0));
    if (ba == ((void*)0)) {
        return -1;
    }
    nd = PyArray_NDIM(ba);

    for (j = 0; j < nd; j++) {
        arrays[j] = ((void*)0);
    }
    size = PyArray_SIZE(ba);
    ptr = (npy_bool *)PyArray_DATA(ba);





    count = count_boolean_trues(1, (char*)ptr, &size, &one);


    for (j = 0; j < nd; j++) {
        new = (PyArrayObject *)PyArray_NewFromDescr(
            &PyArray_Type, PyArray_DescrFromType(NPY_INTP),
            1, &count, ((void*)0), ((void*)0),
            0, ((void*)0));
        if (new == ((void*)0)) {
            goto fail;
        }
        arrays[j] = new;

        dptr[j] = (npy_intp *)PyArray_DATA(new);
        coords[j] = 0;
        dims_m1[j] = PyArray_DIMS(ba)[j]-1;
    }
    if (count == 0) {
        goto finish;
    }





    NPY_BEGIN_THREADS_THRESHOLDED(size);
    for (i = 0; i < size; i++) {
        if (*(ptr++)) {
            for (j = 0; j < nd; j++) {
                *(dptr[j]++) = coords[j];
            }
        }

        for (j = nd - 1; j >= 0; j--) {
            if (coords[j] < dims_m1[j]) {
                coords[j]++;
                break;
            }
            else {
                coords[j] = 0;
            }
        }
    }
    NPY_END_THREADS;

 finish:
    Py_DECREF(ba);
    return nd;

 fail:
    for (j = 0; j < nd; j++) {
        Py_XDECREF(arrays[j]);
    }
    Py_XDECREF(ba);
    return -1;
}
