
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int mcontext; } ;
struct TYPE_8__ {TYPE_1__* arraystate; TYPE_3__* scalarstate; } ;
struct TYPE_7__ {int mcontext; } ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_1__ ArrayBuildStateArr ;
typedef TYPE_2__ ArrayBuildStateAny ;
typedef TYPE_3__ ArrayBuildState ;


 int Assert (scalar_t__) ;
 int InvalidOid ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 scalar_t__ OidIsValid (int ) ;
 int get_array_type (int ) ;
 int get_element_type (int ) ;
 TYPE_3__* initArrayResult (int ,int ,int) ;
 TYPE_1__* initArrayResultArr (int ,int ,int ,int) ;

ArrayBuildStateAny *
initArrayResultAny(Oid input_type, MemoryContext rcontext, bool subcontext)
{
 ArrayBuildStateAny *astate;
 Oid element_type = get_element_type(input_type);

 if (OidIsValid(element_type))
 {

  ArrayBuildStateArr *arraystate;

  arraystate = initArrayResultArr(input_type, InvalidOid, rcontext, subcontext);
  astate = (ArrayBuildStateAny *)
   MemoryContextAlloc(arraystate->mcontext,
          sizeof(ArrayBuildStateAny));
  astate->scalarstate = ((void*)0);
  astate->arraystate = arraystate;
 }
 else
 {

  ArrayBuildState *scalarstate;


  Assert(OidIsValid(get_array_type(input_type)));

  scalarstate = initArrayResult(input_type, rcontext, subcontext);
  astate = (ArrayBuildStateAny *)
   MemoryContextAlloc(scalarstate->mcontext,
          sizeof(ArrayBuildStateAny));
  astate->scalarstate = scalarstate;
  astate->arraystate = ((void*)0);
 }

 return astate;
}
