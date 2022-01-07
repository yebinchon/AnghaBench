
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int eoh_context; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ExpandedObjectHeader ;
typedef int Datum ;


 int Assert (int ) ;
 TYPE_1__* DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 int EOHPGetRWDatum (TYPE_1__*) ;
 int MemoryContextSetParent (int ,int ) ;
 int VARATT_IS_EXTERNAL_EXPANDED_RW (int ) ;

Datum
TransferExpandedObject(Datum d, MemoryContext new_parent)
{
 ExpandedObjectHeader *eohptr = DatumGetEOHP(d);


 Assert(VARATT_IS_EXTERNAL_EXPANDED_RW(DatumGetPointer(d)));


 MemoryContextSetParent(eohptr->eoh_context, new_parent);


 return EOHPGetRWDatum(eohptr);
}
