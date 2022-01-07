
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nelems; } ;
struct TYPE_4__ {int arraystate; TYPE_2__* scalarstate; } ;
typedef int MemoryContext ;
typedef int Datum ;
typedef TYPE_1__ ArrayBuildStateAny ;


 int makeArrayResultArr (int ,int ,int) ;
 int makeMdArrayResult (TYPE_2__*,int,int*,int*,int ,int) ;

Datum
makeArrayResultAny(ArrayBuildStateAny *astate,
       MemoryContext rcontext, bool release)
{
 Datum result;

 if (astate->scalarstate)
 {

  int ndims;
  int dims[1];
  int lbs[1];


  ndims = (astate->scalarstate->nelems > 0) ? 1 : 0;
  dims[0] = astate->scalarstate->nelems;
  lbs[0] = 1;

  result = makeMdArrayResult(astate->scalarstate, ndims, dims, lbs,
           rcontext, release);
 }
 else
 {
  result = makeArrayResultArr(astate->arraystate,
         rcontext, release);
 }
 return result;
}
