
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int finished; int * iter; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int Py_RETURN_FALSE ;
 int Py_RETURN_TRUE ;

__attribute__((used)) static PyObject *npyiter_finished_get(NewNpyArrayIterObject *self)
{
    if (self->iter == ((void*)0) || !self->finished) {
        Py_RETURN_FALSE;
    }
    else {
        Py_RETURN_TRUE;
    }
}
