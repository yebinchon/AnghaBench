
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyArray_Type ;
 int * PyObject_GetAttrString (int *,char*) ;
 int assert (int ) ;

__attribute__((used)) static PyObject *
get_ndarray_array_function(void)
{
    PyObject* method = PyObject_GetAttrString((PyObject *)&PyArray_Type,
                                              "__array_function__");
    assert(method != ((void*)0));
    return method;
}
