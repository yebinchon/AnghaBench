
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int npy_bool ;
struct TYPE_2__ {scalar_t__ type_num; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 scalar_t__ NPY_TIMEDELTA ;
 scalar_t__ PyArray_Check (int *) ;
 TYPE_1__* PyArray_DESCR (int *) ;
 scalar_t__ PyArray_IsScalar (int *,int ) ;
 scalar_t__ PyDelta_Check (int *) ;
 int Timedelta ;

__attribute__((used)) static npy_bool
is_any_numpy_timedelta(PyObject *obj)
{
    return (PyArray_IsScalar(obj, Timedelta) ||
        (PyArray_Check(obj) && (
            PyArray_DESCR((PyArrayObject *)obj)->type_num == NPY_TIMEDELTA)) ||
        PyDelta_Check(obj));
}
