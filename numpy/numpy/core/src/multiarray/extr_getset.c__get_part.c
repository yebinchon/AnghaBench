
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int type_num; int byteorder; } ;
struct TYPE_8__ {int elsize; int byteorder; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;
typedef int PyArrayObject ;





 int NPY_DOUBLE ;
 int NPY_FLOAT ;
 int NPY_LONGDOUBLE ;
 scalar_t__ PyArray_BYTES (int *) ;
 TYPE_7__* PyArray_DESCR (int *) ;
 int PyArray_DIMS (int *) ;
 TYPE_1__* PyArray_DescrFromType (int) ;
 TYPE_1__* PyArray_DescrNew (TYPE_1__*) ;
 int PyArray_FLAGS (int *) ;
 int PyArray_ISNBO (int ) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_NewFromDescrAndBase (int ,TYPE_1__*,int ,int ,int ,scalar_t__,int ,int *,int *) ;
 int PyArray_STRIDES (int *) ;
 int PyErr_Format (int ,char*,int) ;
 int PyExc_ValueError ;
 int Py_DECREF (TYPE_1__*) ;
 int Py_TYPE (int *) ;

__attribute__((used)) static PyArrayObject *
_get_part(PyArrayObject *self, int imag)
{
    int float_type_num;
    PyArray_Descr *type;
    PyArrayObject *ret;
    int offset;

    switch (PyArray_DESCR(self)->type_num) {
        case 129:
            float_type_num = NPY_FLOAT;
            break;
        case 130:
            float_type_num = NPY_DOUBLE;
            break;
        case 128:
            float_type_num = NPY_LONGDOUBLE;
            break;
        default:
            PyErr_Format(PyExc_ValueError,
                     "Cannot convert complex type number %d to float",
                     PyArray_DESCR(self)->type_num);
            return ((void*)0);

    }
    type = PyArray_DescrFromType(float_type_num);

    offset = (imag ? type->elsize : 0);

    if (!PyArray_ISNBO(PyArray_DESCR(self)->byteorder)) {
        PyArray_Descr *new;
        new = PyArray_DescrNew(type);
        new->byteorder = PyArray_DESCR(self)->byteorder;
        Py_DECREF(type);
        type = new;
    }
    ret = (PyArrayObject *)PyArray_NewFromDescrAndBase(
            Py_TYPE(self),
            type,
            PyArray_NDIM(self),
            PyArray_DIMS(self),
            PyArray_STRIDES(self),
            PyArray_BYTES(self) + offset,
            PyArray_FLAGS(self), (PyObject *)self, (PyObject *)self);
    if (ret == ((void*)0)) {
        return ((void*)0);
    }
    return ret;
}
