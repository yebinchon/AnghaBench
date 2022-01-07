
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int Datum ;
typedef scalar_t__ AttrNumber ;


 int Assert (int) ;
 int slot_getattr (int *,scalar_t__,int*) ;

Datum
ExecGetJunkAttribute(TupleTableSlot *slot, AttrNumber attno,
      bool *isNull)
{
 Assert(attno > 0);

 return slot_getattr(slot, attno, isNull);
}
