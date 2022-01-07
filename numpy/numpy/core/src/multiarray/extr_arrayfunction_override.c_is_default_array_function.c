
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * get_ndarray_array_function () ;

__attribute__((used)) static int
is_default_array_function(PyObject *obj)
{
    static PyObject *ndarray_array_function = ((void*)0);

    if (ndarray_array_function == ((void*)0)) {
        ndarray_array_function = get_ndarray_array_function();
    }
    return obj == ndarray_array_function;
}
