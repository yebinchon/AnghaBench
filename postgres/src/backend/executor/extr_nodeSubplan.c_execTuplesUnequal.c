
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int AttrNumber ;


 int DatumGetBool (int ) ;
 int FunctionCall2Coll (int *,int const,int ,int ) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int slot_getattr (int *,int ,int*) ;

__attribute__((used)) static bool
execTuplesUnequal(TupleTableSlot *slot1,
      TupleTableSlot *slot2,
      int numCols,
      AttrNumber *matchColIdx,
      FmgrInfo *eqfunctions,
      const Oid *collations,
      MemoryContext evalContext)
{
 MemoryContext oldContext;
 bool result;
 int i;


 MemoryContextReset(evalContext);
 oldContext = MemoryContextSwitchTo(evalContext);







 result = 0;

 for (i = numCols; --i >= 0;)
 {
  AttrNumber att = matchColIdx[i];
  Datum attr1,
     attr2;
  bool isNull1,
     isNull2;

  attr1 = slot_getattr(slot1, att, &isNull1);

  if (isNull1)
   continue;

  attr2 = slot_getattr(slot2, att, &isNull2);

  if (isNull2)
   continue;


  if (!DatumGetBool(FunctionCall2Coll(&eqfunctions[i],
           collations[i],
           attr1, attr2)))
  {
   result = 1;
   break;
  }
 }

 MemoryContextSwitchTo(oldContext);

 return result;
}
