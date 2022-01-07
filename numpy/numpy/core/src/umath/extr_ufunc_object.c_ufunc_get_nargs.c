
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nargs; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;


 int * PyInt_FromLong (int ) ;

__attribute__((used)) static PyObject *
ufunc_get_nargs(PyUFuncObject *ufunc)
{
    return PyInt_FromLong(ufunc->nargs);
}
