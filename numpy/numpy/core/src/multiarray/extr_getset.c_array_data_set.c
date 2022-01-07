
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; void* data; int * base; } ;
struct TYPE_5__ {scalar_t__ len; void* buf; } ;
typedef scalar_t__ Py_ssize_t ;
typedef TYPE_1__ Py_buffer ;
typedef int PyObject ;
typedef TYPE_2__ PyArrayObject_fields ;
typedef int PyArrayObject ;


 int DEPRECATE (char*) ;
 int NPY_ARRAY_CARRAY ;
 int NPY_ARRAY_OWNDATA ;
 int NPY_ARRAY_UPDATEIFCOPY ;
 int NPY_ARRAY_WRITEABLE ;
 int NPY_ARRAY_WRITEBACKIFCOPY ;
 scalar_t__ PyArray_BASE (int *) ;
 int PyArray_CLEARFLAGS (int *,int) ;
 int PyArray_DATA (int *) ;
 int PyArray_ENABLEFLAGS (int *,int) ;
 int PyArray_FLAGS (int *) ;
 int PyArray_ISONESEGMENT (int *) ;
 scalar_t__ PyArray_NBYTES (int *) ;
 scalar_t__ PyArray_SetBaseObject (int *,int *) ;
 int PyArray_XDECREF (int *) ;
 int PyBUF_SIMPLE ;
 int PyBUF_WRITABLE ;
 int PyBuffer_Release (TYPE_1__*) ;
 int PyDataMem_FREE (int ) ;
 int PyErr_Clear () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 scalar_t__ PyObject_AsReadBuffer (int *,void const**,scalar_t__*) ;
 scalar_t__ PyObject_AsWriteBuffer (int *,void**,scalar_t__*) ;
 scalar_t__ PyObject_GetBuffer (int *,TYPE_1__*,int) ;
 int Py_DECREF (scalar_t__) ;
 int Py_INCREF (int *) ;
 int _dealloc_cached_buffer_info (int *) ;

__attribute__((used)) static int
array_data_set(PyArrayObject *self, PyObject *op)
{
    void *buf;
    Py_ssize_t buf_len;
    int writeable=1;





    int ret = DEPRECATE("Assigning the 'data' attribute is an "
                        "inherently unsafe operation and will "
                        "be removed in the future.");
    if (ret < 0) {
        return -1;
    }

    if (op == ((void*)0)) {
        PyErr_SetString(PyExc_AttributeError,
                "Cannot delete array data");
        return -1;
    }
    if (PyObject_AsWriteBuffer(op, &buf, &buf_len) < 0) {
        PyErr_Clear();
        writeable = 0;
        if (PyObject_AsReadBuffer(op, (const void **)&buf, &buf_len) < 0) {
            PyErr_Clear();
            PyErr_SetString(PyExc_AttributeError,
                    "object does not have single-segment buffer interface");
            return -1;
        }
    }

    if (!PyArray_ISONESEGMENT(self)) {
        PyErr_SetString(PyExc_AttributeError,
                "cannot set single-segment buffer for discontiguous array");
        return -1;
    }
    if (PyArray_NBYTES(self) > buf_len) {
        PyErr_SetString(PyExc_AttributeError, "not enough data for array");
        return -1;
    }
    if (PyArray_FLAGS(self) & NPY_ARRAY_OWNDATA) {
        PyArray_XDECREF(self);
        PyDataMem_FREE(PyArray_DATA(self));
    }
    if (PyArray_BASE(self)) {
        if ((PyArray_FLAGS(self) & NPY_ARRAY_WRITEBACKIFCOPY) ||
            (PyArray_FLAGS(self) & NPY_ARRAY_UPDATEIFCOPY)) {
            PyArray_ENABLEFLAGS((PyArrayObject *)PyArray_BASE(self),
                                                NPY_ARRAY_WRITEABLE);
            PyArray_CLEARFLAGS(self, NPY_ARRAY_WRITEBACKIFCOPY);
            PyArray_CLEARFLAGS(self, NPY_ARRAY_UPDATEIFCOPY);
        }
        Py_DECREF(PyArray_BASE(self));
        ((PyArrayObject_fields *)self)->base = ((void*)0);
    }
    Py_INCREF(op);
    if (PyArray_SetBaseObject(self, op) < 0) {
        return -1;
    }
    ((PyArrayObject_fields *)self)->data = buf;
    ((PyArrayObject_fields *)self)->flags = NPY_ARRAY_CARRAY;
    if (!writeable) {
        PyArray_CLEARFLAGS(self, ~NPY_ARRAY_WRITEABLE);
    }
    return 0;
}
