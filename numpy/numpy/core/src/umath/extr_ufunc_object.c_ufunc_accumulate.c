
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyUFuncObject ;
typedef int PyObject ;


 int PyUFunc_CheckOverride (int *,char*,int *,int *,int **) ;
 int * PyUFunc_GenericReduction (int *,int *,int *,int ) ;
 int UFUNC_ACCUMULATE ;

__attribute__((used)) static PyObject *
ufunc_accumulate(PyUFuncObject *ufunc, PyObject *args, PyObject *kwds)
{
    int errval;
    PyObject *override = ((void*)0);

    errval = PyUFunc_CheckOverride(ufunc, "accumulate", args, kwds, &override);
    if (errval) {
        return ((void*)0);
    }
    else if (override) {
        return override;
    }
    return PyUFunc_GenericReduction(ufunc, args, kwds, UFUNC_ACCUMULATE);
}
