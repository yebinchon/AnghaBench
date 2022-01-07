
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_5__ {int tuple_table; TYPE_1__* parentestate; int ** relsubs_slot; } ;
struct TYPE_4__ {int es_range_table_size; int es_query_cxt; } ;
typedef int Relation ;
typedef int MemoryContext ;
typedef int Index ;
typedef TYPE_2__ EPQState ;


 int Assert (int) ;
 int MemoryContextSwitchTo (int ) ;
 int * table_slot_create (int,int *) ;

TupleTableSlot *
EvalPlanQualSlot(EPQState *epqstate,
     Relation relation, Index rti)
{
 TupleTableSlot **slot;

 Assert(relation);
 Assert(rti > 0 && rti <= epqstate->parentestate->es_range_table_size);
 slot = &epqstate->relsubs_slot[rti - 1];

 if (*slot == ((void*)0))
 {
  MemoryContext oldcontext;

  oldcontext = MemoryContextSwitchTo(epqstate->parentestate->es_query_cxt);
  *slot = table_slot_create(relation, &epqstate->tuple_table);
  MemoryContextSwitchTo(oldcontext);
 }

 return *slot;
}
