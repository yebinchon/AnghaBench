
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_bool ;
typedef int PyUFuncObject ;
typedef int PyObject ;


 int * _get_identity (int *,int *) ;

__attribute__((used)) static PyObject *
ufunc_get_identity(PyUFuncObject *ufunc)
{
    npy_bool reorderable;
    return _get_identity(ufunc, &reorderable);
}
