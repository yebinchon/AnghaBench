
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_7__ {int two; int nd; int* shape; } ;
struct TYPE_6__ {int ndim; int* shape; int len; } ;
typedef TYPE_1__ Py_buffer ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef TYPE_2__ PyArrayInterface ;


 int Generic ;
 int NPY_MAXDIMS ;
 scalar_t__ NpyCapsule_AsVoidPtr (int *) ;
 scalar_t__ NpyCapsule_Check (int *) ;
 scalar_t__ PyArray_Check (int *) ;
 int PyArray_DIM (int *,int) ;
 scalar_t__ PyArray_IsScalar (int *,int ) ;
 int * PyArray_LookupSpecial_OnInstance (int *,char*) ;
 int PyArray_NDIM (int *) ;
 int PyBUF_ND ;
 int PyBUF_SIMPLE ;
 int PyBUF_STRIDES ;
 scalar_t__ PyBuffer_Check (int *) ;
 int PyBuffer_Release (TYPE_1__*) ;
 scalar_t__ PyDict_Check (int *) ;
 int * PyDict_GetItemString (int *,char*) ;
 int PyErr_Clear () ;
 scalar_t__ PyErr_ExceptionMatches (int ) ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_BufferError ;
 int PyExc_KeyError ;
 int PyExc_RuntimeError ;
 int PyExc_TypeError ;
 int PyInt_AsSsize_t (int ) ;
 int PyObject_CheckBuffer (int *) ;
 scalar_t__ PyObject_GetBuffer (int *,TYPE_1__*,int) ;
 int PySequence_Check (int *) ;
 int * PySequence_Fast (int *,char*) ;
 int * PySequence_Fast_GET_ITEM (int *,int) ;
 int PySequence_Fast_GET_SIZE (int *) ;
 scalar_t__ PySequence_Length (int *) ;
 scalar_t__ PyString_Check (int *) ;
 scalar_t__ PyTuple_Check (int *) ;
 int PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;
 int _dealloc_cached_buffer_info (int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
discover_dimensions(PyObject *obj, int *maxndim, npy_intp *d, int check_it,
                                    int stop_at_string, int stop_at_tuple,
                                    int *out_is_object)
{
    PyObject *e;
    npy_intp n, i;
    Py_buffer buffer_view;
    PyObject * seq;

    if (*maxndim == 0) {
        return 0;
    }


    if (PyArray_Check(obj)) {
        PyArrayObject *arr = (PyArrayObject *)obj;

        if (PyArray_NDIM(arr) < *maxndim) {
            *maxndim = PyArray_NDIM(arr);
        }

        for (i=0; i<*maxndim; i++) {
            d[i] = PyArray_DIM(arr,i);
        }
        return 0;
    }


    if (PyArray_IsScalar(obj, Generic)) {
        *maxndim = 0;
        return 0;
    }


    if (!PySequence_Check(obj) ||
            PySequence_Length(obj) < 0) {
        *maxndim = 0;
        PyErr_Clear();
        return 0;
    }


    if (PyString_Check(obj) ||


            PyBuffer_Check(obj) ||

            PyUnicode_Check(obj)) {
        if (stop_at_string) {
            *maxndim = 0;
        }
        else {
            d[0] = PySequence_Length(obj);
            *maxndim = 1;
        }
        return 0;
    }


    if (stop_at_tuple && PyTuple_Check(obj)) {
        *maxndim = 0;
        return 0;
    }



    if (PyObject_CheckBuffer(obj) == 1) {
        memset(&buffer_view, 0, sizeof(Py_buffer));
        if (PyObject_GetBuffer(obj, &buffer_view,
                    PyBUF_STRIDES|PyBUF_SIMPLE) == 0 ||
                PyObject_GetBuffer(obj, &buffer_view,
                    PyBUF_ND|PyBUF_SIMPLE) == 0) {
            int nd = buffer_view.ndim;

            if (nd < *maxndim) {
                *maxndim = nd;
            }
            for (i = 0; i < *maxndim; i++) {
                d[i] = buffer_view.shape[i];
            }
            PyBuffer_Release(&buffer_view);
            _dealloc_cached_buffer_info(obj);
            return 0;
        }
        else if (PyErr_Occurred()) {
            if (PyErr_ExceptionMatches(PyExc_BufferError) ||
                    PyErr_ExceptionMatches(PyExc_TypeError)) {
                PyErr_Clear();
            } else {
                return -1;
            }
        }
        else if (PyObject_GetBuffer(obj, &buffer_view, PyBUF_SIMPLE) == 0) {
            d[0] = buffer_view.len;
            *maxndim = 1;
            PyBuffer_Release(&buffer_view);
            _dealloc_cached_buffer_info(obj);
            return 0;
        }
        else if (PyErr_Occurred()) {
            if (PyErr_ExceptionMatches(PyExc_BufferError) ||
                    PyErr_ExceptionMatches(PyExc_TypeError)) {
                PyErr_Clear();
            } else {
                return -1;
            }
        }
    }


    e = PyArray_LookupSpecial_OnInstance(obj, "__array_struct__");
    if (e != ((void*)0)) {
        int nd = -1;

        if (NpyCapsule_Check(e)) {
            PyArrayInterface *inter;
            inter = (PyArrayInterface *)NpyCapsule_AsVoidPtr(e);
            if (inter->two == 2) {
                nd = inter->nd;
                if (nd >= 0) {
                    if (nd < *maxndim) {
                        *maxndim = nd;
                    }
                    for (i=0; i<*maxndim; i++) {
                        d[i] = inter->shape[i];
                    }
                }
            }
        }
        Py_DECREF(e);
        if (nd >= 0) {
            return 0;
        }
    }
    else if (PyErr_Occurred()) {
        PyErr_Clear();
    }



    e = PyArray_LookupSpecial_OnInstance(obj, "__array_interface__");
    if (e != ((void*)0)) {
        int nd = -1;
        if (PyDict_Check(e)) {
            PyObject *new;
            new = PyDict_GetItemString(e, "shape");
            if (new && PyTuple_Check(new)) {
                nd = PyTuple_GET_SIZE(new);
                if (nd < *maxndim) {
                    *maxndim = nd;
                }
                for (i=0; i<*maxndim; i++) {
                    d[i] = PyInt_AsSsize_t(PyTuple_GET_ITEM(new, i));
                    if (d[i] < 0) {
                        PyErr_SetString(PyExc_RuntimeError,
                                "Invalid shape in __array_interface__");
                        Py_DECREF(e);
                        return -1;
                    }
                }
            }
        }
        Py_DECREF(e);
        if (nd >= 0) {
            return 0;
        }
    }
    else if (PyErr_Occurred()) {
        PyErr_Clear();
    }

    seq = PySequence_Fast(obj, "Could not convert object to sequence");
    if (seq == ((void*)0)) {
        if (PyErr_ExceptionMatches(PyExc_KeyError)) {
            PyErr_Clear();
            *maxndim = 0;
            *out_is_object = 1;
            return 0;
        }
        else {
            return -1;
        }
    }
    n = PySequence_Fast_GET_SIZE(seq);

    d[0] = n;


    if (n == 0 || *maxndim == 1) {
        *maxndim = 1;
        Py_DECREF(seq);
        return 0;
    }
    else {
        int all_elems_maxndim = *maxndim - 1;
        npy_intp *all_elems_d = d + 1;
        int all_dimensions_match = 1;


        PyObject *first = PySequence_Fast_GET_ITEM(seq, 0);
        if (discover_dimensions(
                first, &all_elems_maxndim, all_elems_d, check_it,
                stop_at_string, stop_at_tuple, out_is_object) < 0) {
            Py_DECREF(seq);
            return -1;
        }


        for (i = 1; i < n; ++i) {
            int j;
            int elem_maxndim = *maxndim - 1;
            npy_intp elem_d[NPY_MAXDIMS];

            PyObject *elem = PySequence_Fast_GET_ITEM(seq, i);
            if (discover_dimensions(
                    elem, &elem_maxndim, elem_d, check_it,
                    stop_at_string, stop_at_tuple, out_is_object) < 0) {
                Py_DECREF(seq);
                return -1;
            }


            for (j = 0; j < elem_maxndim && j < all_elems_maxndim; ++j) {
                if (elem_d[j] != all_elems_d[j]) {
                    break;
                }
            }
            if (j != elem_maxndim || j != all_elems_maxndim) {
                all_dimensions_match = 0;
            }
            all_elems_maxndim = j;
        }
        *maxndim = all_elems_maxndim + 1;
        if (!all_dimensions_match) {

            *out_is_object = 1;
        }
    }

    Py_DECREF(seq);

    return 0;
}
