
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * iter; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int NpyIter_DebugPrint (int *) ;
 int Py_RETURN_NONE ;
 int printf (char*) ;

__attribute__((used)) static PyObject *
npyiter_debug_print(NewNpyArrayIterObject *self)
{
    if (self->iter != ((void*)0)) {
        NpyIter_DebugPrint(self->iter);
    }
    else {
        printf("Iterator: (nil)\n");
    }

    Py_RETURN_NONE;
}
