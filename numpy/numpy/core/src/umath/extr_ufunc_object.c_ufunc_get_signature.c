
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int core_signature; int core_enabled; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;


 int * PyUString_FromString (int ) ;
 int Py_RETURN_NONE ;

__attribute__((used)) static PyObject *
ufunc_get_signature(PyUFuncObject *ufunc)
{
    if (!ufunc->core_enabled) {
        Py_RETURN_NONE;
    }
    return PyUString_FromString(ufunc->core_signature);
}
