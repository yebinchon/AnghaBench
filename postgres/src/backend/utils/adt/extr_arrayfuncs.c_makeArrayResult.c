
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nelems; int private_cxt; } ;
typedef int MemoryContext ;
typedef int Datum ;
typedef TYPE_1__ ArrayBuildState ;


 int makeMdArrayResult (TYPE_1__*,int,int*,int*,int ,int ) ;

Datum
makeArrayResult(ArrayBuildState *astate,
    MemoryContext rcontext)
{
 int ndims;
 int dims[1];
 int lbs[1];


 ndims = (astate->nelems > 0) ? 1 : 0;
 dims[0] = astate->nelems;
 lbs[0] = 1;

 return makeMdArrayResult(astate, ndims, dims, lbs, rcontext,
        astate->private_cxt);
}
