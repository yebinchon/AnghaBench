
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ao; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayIterObject ;


 int PyArg_ParseTuple (int *,char*) ;
 int * PyArray_Flatten (int ,int ) ;

__attribute__((used)) static PyObject *
iter_copy(PyArrayIterObject *it, PyObject *args)
{
    if (!PyArg_ParseTuple(args, "")) {
        return ((void*)0);
    }
    return PyArray_Flatten(it->ao, 0);
}
