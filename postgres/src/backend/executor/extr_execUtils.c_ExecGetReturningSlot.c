
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_7__ {int es_query_cxt; } ;
struct TYPE_6__ {int * ri_ReturningSlot; int ri_RelationDesc; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef int Relation ;
typedef int MemoryContext ;
typedef TYPE_2__ EState ;


 int * ExecInitExtraTupleSlot (TYPE_2__*,int ,int ) ;
 int MemoryContextSwitchTo (int ) ;
 int RelationGetDescr (int ) ;
 int table_slot_callbacks (int ) ;

TupleTableSlot *
ExecGetReturningSlot(EState *estate, ResultRelInfo *relInfo)
{
 if (relInfo->ri_ReturningSlot == ((void*)0))
 {
  Relation rel = relInfo->ri_RelationDesc;
  MemoryContext oldcontext = MemoryContextSwitchTo(estate->es_query_cxt);

  relInfo->ri_ReturningSlot =
   ExecInitExtraTupleSlot(estate,
           RelationGetDescr(rel),
           table_slot_callbacks(rel));

  MemoryContextSwitchTo(oldcontext);
 }

 return relInfo->ri_ReturningSlot;
}
