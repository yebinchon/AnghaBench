
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int finished; int started; int * iter; int (* iternext ) (int *) ;} ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 scalar_t__ NPY_SUCCEED ;
 scalar_t__ npyiter_resetbasepointers (TYPE_1__*) ;
 int * npyiter_value_get (TYPE_1__*) ;
 int stub1 (int *) ;

__attribute__((used)) static PyObject *
npyiter_next(NewNpyArrayIterObject *self)
{
    if (self->iter == ((void*)0) || self->iternext == ((void*)0) ||
                self->finished) {
        return ((void*)0);
    }





    if (self->started) {
        if (!self->iternext(self->iter)) {
            self->finished = 1;
            return ((void*)0);
        }


        if (npyiter_resetbasepointers(self) != NPY_SUCCEED) {
            return ((void*)0);
        }
    }
    self->started = 1;

    return npyiter_value_get(self);
}
