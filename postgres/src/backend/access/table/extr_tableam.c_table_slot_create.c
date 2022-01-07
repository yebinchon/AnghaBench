
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlotOps ;
typedef int TupleTableSlot ;
typedef int Relation ;
typedef int List ;


 int * MakeSingleTupleTableSlot (int ,int const*) ;
 int RelationGetDescr (int ) ;
 int * lappend (int *,int *) ;
 int * table_slot_callbacks (int ) ;

TupleTableSlot *
table_slot_create(Relation relation, List **reglist)
{
 const TupleTableSlotOps *tts_cb;
 TupleTableSlot *slot;

 tts_cb = table_slot_callbacks(relation);
 slot = MakeSingleTupleTableSlot(RelationGetDescr(relation), tts_cb);

 if (reglist)
  *reglist = lappend(*reglist, slot);

 return slot;
}
