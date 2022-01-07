
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int finished; int * iter; scalar_t__ (* iternext ) (int *) ;} ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 scalar_t__ NPY_SUCCEED ;
 int Py_RETURN_FALSE ;
 int Py_RETURN_TRUE ;
 scalar_t__ npyiter_resetbasepointers (TYPE_1__*) ;
 scalar_t__ stub1 (int *) ;

__attribute__((used)) static PyObject *
npyiter_iternext(NewNpyArrayIterObject *self)
{
    if (self->iter != ((void*)0) && self->iternext != ((void*)0) &&
                        !self->finished && self->iternext(self->iter)) {

        if (npyiter_resetbasepointers(self) != NPY_SUCCEED) {
            return ((void*)0);
        }

        Py_RETURN_TRUE;
    }
    else {
        self->finished = 1;
        Py_RETURN_FALSE;
    }
}
