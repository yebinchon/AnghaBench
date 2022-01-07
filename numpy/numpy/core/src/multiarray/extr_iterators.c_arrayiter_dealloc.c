
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyArrayIterObject ;


 int PyArray_free (int *) ;
 int array_iter_base_dealloc (int *) ;

__attribute__((used)) static void
arrayiter_dealloc(PyArrayIterObject *it)
{




    array_iter_base_dealloc(it);
    PyArray_free(it);
}
