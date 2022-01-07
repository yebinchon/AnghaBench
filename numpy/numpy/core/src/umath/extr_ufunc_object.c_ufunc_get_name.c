
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;


 int * PyUString_FromString (int ) ;

__attribute__((used)) static PyObject *
ufunc_get_name(PyUFuncObject *ufunc)
{
    return PyUString_FromString(ufunc->name);
}
