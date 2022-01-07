
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int started; int finished; int iter; struct TYPE_3__* nested_child; int dataptrs; } ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int NPY_FAIL ;
 scalar_t__ NPY_SUCCEED ;
 scalar_t__ NpyIter_GetIterSize (int ) ;
 scalar_t__ NpyIter_ResetBasePointers (int ,int ,int *) ;

__attribute__((used)) static int
npyiter_resetbasepointers(NewNpyArrayIterObject *self)
{
    while (self->nested_child) {
        if (NpyIter_ResetBasePointers(self->nested_child->iter,
                                        self->dataptrs, ((void*)0)) != NPY_SUCCEED) {
            return NPY_FAIL;
        }
        self = self->nested_child;
        if (NpyIter_GetIterSize(self->iter) == 0) {
            self->started = 1;
            self->finished = 1;
        }
        else {
            self->started = 0;
            self->finished = 0;
        }
    }

    return NPY_SUCCEED;
}
