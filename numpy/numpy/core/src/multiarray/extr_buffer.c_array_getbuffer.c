
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ndim; void** shape; void** strides; int * format; } ;
typedef TYPE_1__ _buffer_info_t ;
struct TYPE_6__ {int readonly; int ndim; void** shape; int * obj; void** strides; void* itemsize; int * format; int len; int * internal; int * suboffsets; int buf; } ;
typedef void* Py_ssize_t ;
typedef TYPE_2__ Py_buffer ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_ARRAY_C_CONTIGUOUS ;
 int NPY_ARRAY_F_CONTIGUOUS ;
 int NPY_ARRAY_WARN_ON_WRITE ;
 scalar_t__ PyArray_CHKFLAGS (int *,int ) ;
 int PyArray_DATA (int *) ;
 scalar_t__ PyArray_FailUnlessWriteable (int *,char*) ;
 int PyArray_ISONESEGMENT (int *) ;
 int PyArray_ISWRITEABLE (int *) ;
 void* PyArray_ITEMSIZE (int *) ;
 int PyArray_NBYTES (int *) ;
 int PyBUF_ANY_CONTIGUOUS ;
 int PyBUF_C_CONTIGUOUS ;
 int PyBUF_FORMAT ;
 int PyBUF_F_CONTIGUOUS ;
 int PyBUF_ND ;
 int PyBUF_STRIDES ;
 int PyBUF_WRITEABLE ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int Py_INCREF (int *) ;
 TYPE_1__* _buffer_get_info (int *) ;

__attribute__((used)) static int
array_getbuffer(PyObject *obj, Py_buffer *view, int flags)
{
    PyArrayObject *self;
    _buffer_info_t *info = ((void*)0);

    self = (PyArrayObject*)obj;


    if ((flags & PyBUF_C_CONTIGUOUS) == PyBUF_C_CONTIGUOUS &&
            !PyArray_CHKFLAGS(self, NPY_ARRAY_C_CONTIGUOUS)) {
        PyErr_SetString(PyExc_ValueError, "ndarray is not C-contiguous");
        goto fail;
    }
    if ((flags & PyBUF_F_CONTIGUOUS) == PyBUF_F_CONTIGUOUS &&
            !PyArray_CHKFLAGS(self, NPY_ARRAY_F_CONTIGUOUS)) {
        PyErr_SetString(PyExc_ValueError, "ndarray is not Fortran contiguous");
        goto fail;
    }
    if ((flags & PyBUF_ANY_CONTIGUOUS) == PyBUF_ANY_CONTIGUOUS
            && !PyArray_ISONESEGMENT(self)) {
        PyErr_SetString(PyExc_ValueError, "ndarray is not contiguous");
        goto fail;
    }
    if ((flags & PyBUF_STRIDES) != PyBUF_STRIDES &&
            !PyArray_CHKFLAGS(self, NPY_ARRAY_C_CONTIGUOUS)) {

        PyErr_SetString(PyExc_ValueError, "ndarray is not C-contiguous");
        goto fail;
    }
    if ((flags & PyBUF_WRITEABLE) == PyBUF_WRITEABLE) {
        if (PyArray_FailUnlessWriteable(self, "buffer source array") < 0) {
            goto fail;
        }
    }

    if (view == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError, "NULL view in getbuffer");
        goto fail;
    }


    info = _buffer_get_info(obj);
    if (info == ((void*)0)) {
        goto fail;
    }

    view->buf = PyArray_DATA(self);
    view->suboffsets = ((void*)0);
    view->itemsize = PyArray_ITEMSIZE(self);
    view->readonly = (!PyArray_ISWRITEABLE(self) ||
                      PyArray_CHKFLAGS(self, NPY_ARRAY_WARN_ON_WRITE));
    view->internal = ((void*)0);
    view->len = PyArray_NBYTES(self);
    if ((flags & PyBUF_FORMAT) == PyBUF_FORMAT) {
        view->format = info->format;
    } else {
        view->format = ((void*)0);
    }
    if ((flags & PyBUF_ND) == PyBUF_ND) {
        view->ndim = info->ndim;
        view->shape = info->shape;
    }
    else {
        view->ndim = 0;
        view->shape = ((void*)0);
    }
    if ((flags & PyBUF_STRIDES) == PyBUF_STRIDES) {
        view->strides = info->strides;
    }
    else {
        view->strides = ((void*)0);
    }
    view->obj = (PyObject*)self;

    Py_INCREF(self);
    return 0;

fail:
    return -1;
}
