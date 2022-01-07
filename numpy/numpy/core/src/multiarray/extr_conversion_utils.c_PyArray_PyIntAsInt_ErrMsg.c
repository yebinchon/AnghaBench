
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_intp ;
typedef int PyObject ;


 scalar_t__ INT_MAX ;
 scalar_t__ INT_MIN ;
 scalar_t__ PyArray_PyIntAsIntp_ErrMsg (int *,char const*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;

__attribute__((used)) static int
PyArray_PyIntAsInt_ErrMsg(PyObject *o, const char * msg)
{
    npy_intp long_value;

    long_value = PyArray_PyIntAsIntp_ErrMsg(o, msg);







    return (int) long_value;
}
