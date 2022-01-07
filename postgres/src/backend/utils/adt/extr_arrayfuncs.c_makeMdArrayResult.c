
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mcontext; int private_cxt; int typalign; int typbyval; int typlen; int element_type; int dnulls; int dvalues; } ;
typedef int MemoryContext ;
typedef int Datum ;
typedef int ArrayType ;
typedef TYPE_1__ ArrayBuildState ;


 int Assert (int ) ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (int *) ;
 int * construct_md_array (int ,int ,int,int*,int*,int ,int ,int ,int ) ;

Datum
makeMdArrayResult(ArrayBuildState *astate,
      int ndims,
      int *dims,
      int *lbs,
      MemoryContext rcontext,
      bool release)
{
 ArrayType *result;
 MemoryContext oldcontext;


 oldcontext = MemoryContextSwitchTo(rcontext);

 result = construct_md_array(astate->dvalues,
        astate->dnulls,
        ndims,
        dims,
        lbs,
        astate->element_type,
        astate->typlen,
        astate->typbyval,
        astate->typalign);

 MemoryContextSwitchTo(oldcontext);


 if (release)
 {
  Assert(astate->private_cxt);
  MemoryContextDelete(astate->mcontext);
 }

 return PointerGetDatum(result);
}
