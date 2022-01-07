
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef int PyArrayIterObject ;


 int NPY_BEGIN_THREADS_DEF ;
 int NPY_BEGIN_THREADS_THRESHOLDED (int) ;
 int NPY_END_THREADS ;
 int NPY_MAXDIMS ;
 int NPY_UBYTE ;
 scalar_t__ PyArray_CheckAxis (int *,int*,int ) ;
 char* PyArray_DATA (int *) ;
 int PyArray_DIM (int *,int) ;
 int PyArray_DescrFromType (int ) ;
 scalar_t__ PyArray_FROM_O (int *) ;
 int PyArray_ISBOOL (int *) ;
 int PyArray_ISFORTRAN (int *) ;
 int PyArray_ISINTEGER (int *) ;
 int PyArray_ITEMSIZE (int *) ;
 int PyArray_ITER_DATA (int *) ;
 int PyArray_ITER_NEXT (int *) ;
 scalar_t__ PyArray_ITER_NOTDONE (int *) ;
 scalar_t__ PyArray_IterAllButAxis (int *,int*) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_NewFromDescr (int ,int ,int,int*,int *,int *,int ,int *) ;
 int PyArray_STRIDE (int *,int) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int Py_DECREF (int *) ;
 int Py_TYPE (int *) ;
 int Py_XDECREF (int *) ;
 int pack_inner (int ,int,int,int ,int ,int,int ,char) ;

__attribute__((used)) static PyObject *
pack_bits(PyObject *input, int axis, char order)
{
    PyArrayObject *inp;
    PyArrayObject *new = ((void*)0);
    PyArrayObject *out = ((void*)0);
    npy_intp outdims[NPY_MAXDIMS];
    int i;
    PyArrayIterObject *it, *ot;
    NPY_BEGIN_THREADS_DEF;

    inp = (PyArrayObject *)PyArray_FROM_O(input);

    if (inp == ((void*)0)) {
        return ((void*)0);
    }
    if (!PyArray_ISBOOL(inp) && !PyArray_ISINTEGER(inp)) {
        PyErr_SetString(PyExc_TypeError,
                "Expected an input array of integer or boolean data type");
        Py_DECREF(inp);
        goto fail;
    }

    new = (PyArrayObject *)PyArray_CheckAxis(inp, &axis, 0);
    Py_DECREF(inp);
    if (new == ((void*)0)) {
        return ((void*)0);
    }

    if (PyArray_NDIM(new) == 0) {
        char *optr, *iptr;

        out = (PyArrayObject *)PyArray_NewFromDescr(
                Py_TYPE(new), PyArray_DescrFromType(NPY_UBYTE),
                0, ((void*)0), ((void*)0), ((void*)0),
                0, ((void*)0));
        if (out == ((void*)0)) {
            goto fail;
        }
        optr = PyArray_DATA(out);
        iptr = PyArray_DATA(new);
        *optr = 0;
        for (i = 0; i < PyArray_ITEMSIZE(new); i++) {
            if (*iptr != 0) {
                *optr = 1;
                break;
            }
            iptr++;
        }
        goto finish;
    }



    for (i = 0; i < PyArray_NDIM(new); i++) {
        outdims[i] = PyArray_DIM(new, i);
    }





    outdims[axis] = ((outdims[axis] - 1) >> 3) + 1;


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

    NPY_BEGIN_THREADS_THRESHOLDED(PyArray_DIM(out, axis));
    while (PyArray_ITER_NOTDONE(it)) {
        pack_inner(PyArray_ITER_DATA(it), PyArray_ITEMSIZE(new),
                   PyArray_DIM(new, axis), PyArray_STRIDE(new, axis),
                   PyArray_ITER_DATA(ot), PyArray_DIM(out, axis),
                   PyArray_STRIDE(out, axis), order);
        PyArray_ITER_NEXT(it);
        PyArray_ITER_NEXT(ot);
    }
    NPY_END_THREADS;

    Py_DECREF(it);
    Py_DECREF(ot);

finish:
    Py_DECREF(new);
    return (PyObject *)out;

fail:
    Py_XDECREF(new);
    Py_XDECREF(out);
    return ((void*)0);
}
