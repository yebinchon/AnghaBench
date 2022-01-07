
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; int len; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Dims ;
typedef int PyArrayObject ;


 int PyArray_SIZE (int *) ;
 int PyErr_SetObject (int ,int *) ;
 int PyExc_ValueError ;
 int PyUString_ConcatAndDel (int **,int *) ;
 int * PyUString_FromFormat (char*,int ) ;
 int Py_DECREF (int *) ;
 int * convert_shape_to_string (int ,int ,char*) ;

__attribute__((used)) static void
raise_reshape_size_mismatch(PyArray_Dims *newshape, PyArrayObject *arr)
{
    PyObject *msg = PyUString_FromFormat("cannot reshape array of size %zd "
                                         "into shape ", PyArray_SIZE(arr));
    PyObject *tmp = convert_shape_to_string(newshape->len, newshape->ptr, "");

    PyUString_ConcatAndDel(&msg, tmp);
    if (msg != ((void*)0)) {
        PyErr_SetObject(PyExc_ValueError, msg);
        Py_DECREF(msg);
    }
}
