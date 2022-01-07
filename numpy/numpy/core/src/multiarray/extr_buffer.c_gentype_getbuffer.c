
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * format; int strides; int shape; int ndim; } ;
typedef TYPE_1__ _buffer_info_t ;
struct TYPE_11__ {int elsize; scalar_t__ type_num; } ;
struct TYPE_10__ {int len; int itemsize; int readonly; int * obj; int * suboffsets; void* buf; int * format; int strides; int shape; int ndim; } ;
typedef TYPE_2__ Py_buffer ;
typedef int PyObject ;
typedef TYPE_3__ PyArray_Descr ;


 int Datetime ;
 scalar_t__ NPY_UNICODE ;
 TYPE_3__* PyArray_DescrFromScalar (int *) ;
 scalar_t__ PyArray_IsScalar (int *,int ) ;
 int PyBUF_FORMAT ;
 int PyBUF_WRITABLE ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_BufferError ;
 int Py_DECREF (TYPE_3__*) ;
 int Py_INCREF (int *) ;
 int Timedelta ;
 TYPE_1__* _buffer_get_info (int *) ;
 scalar_t__ scalar_value (int *,TYPE_3__*) ;

int
gentype_getbuffer(PyObject *self, Py_buffer *view, int flags)
{
    _buffer_info_t *info = ((void*)0);
    PyArray_Descr *descr = ((void*)0);
    int elsize;

    if (flags & PyBUF_WRITABLE) {
        PyErr_SetString(PyExc_BufferError, "scalar buffer is readonly");
        goto fail;
    }


    info = _buffer_get_info(self);
    if (info == ((void*)0)) {
        goto fail;
    }

    view->ndim = info->ndim;
    view->shape = info->shape;
    view->strides = info->strides;

    if ((flags & PyBUF_FORMAT) == PyBUF_FORMAT) {
        view->format = info->format;
    } else {
        view->format = ((void*)0);
    }

    descr = PyArray_DescrFromScalar(self);
    view->buf = (void *)scalar_value(self, descr);
    elsize = descr->elsize;

    if (descr->type_num == NPY_UNICODE) {
        elsize >>= 1;
    }

    view->len = elsize;
    if (PyArray_IsScalar(self, Datetime) || PyArray_IsScalar(self, Timedelta)) {
        elsize = 1;
    }
    view->itemsize = elsize;

    Py_DECREF(descr);

    view->readonly = 1;
    view->suboffsets = ((void*)0);
    view->obj = self;
    Py_INCREF(self);
    return 0;

fail:
    view->obj = ((void*)0);
    return -1;
}
