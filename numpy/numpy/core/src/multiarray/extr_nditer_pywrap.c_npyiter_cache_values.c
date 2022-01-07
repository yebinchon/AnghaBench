
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int writeflags; int readflags; int * innerloopsizeptr; int * innerstrides; int operands; int dtypes; int dataptrs; int * get_multi_index; int * iternext; int * iter; } ;
typedef int NpyIter ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int NpyIter_GetDataPtrArray (int *) ;
 int NpyIter_GetDescrArray (int *) ;
 int * NpyIter_GetGetMultiIndex (int *,int *) ;
 int * NpyIter_GetInnerLoopSizePtr (int *) ;
 int * NpyIter_GetInnerStrideArray (int *) ;
 int * NpyIter_GetIterNext (int *,int *) ;
 int NpyIter_GetOperandArray (int *) ;
 int NpyIter_GetReadFlags (int *,int ) ;
 int NpyIter_GetWriteFlags (int *,int ) ;
 int NpyIter_HasDelayedBufAlloc (int *) ;
 scalar_t__ NpyIter_HasExternalLoop (int *) ;
 scalar_t__ NpyIter_HasMultiIndex (int *) ;

__attribute__((used)) static int npyiter_cache_values(NewNpyArrayIterObject *self)
{
    NpyIter *iter = self->iter;


    self->iternext = NpyIter_GetIterNext(iter, ((void*)0));
    if (self->iternext == ((void*)0)) {
        return -1;
    }

    if (NpyIter_HasMultiIndex(iter) && !NpyIter_HasDelayedBufAlloc(iter)) {
        self->get_multi_index = NpyIter_GetGetMultiIndex(iter, ((void*)0));
    }
    else {
        self->get_multi_index = ((void*)0);
    }


    self->dataptrs = NpyIter_GetDataPtrArray(iter);
    self->dtypes = NpyIter_GetDescrArray(iter);
    self->operands = NpyIter_GetOperandArray(iter);

    if (NpyIter_HasExternalLoop(iter)) {
        self->innerstrides = NpyIter_GetInnerStrideArray(iter);
        self->innerloopsizeptr = NpyIter_GetInnerLoopSizePtr(iter);
    }
    else {
        self->innerstrides = ((void*)0);
        self->innerloopsizeptr = ((void*)0);
    }


    NpyIter_GetReadFlags(iter, self->readflags);
    NpyIter_GetWriteFlags(iter, self->writeflags);
    return 0;
}
