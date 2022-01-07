
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eoh_context; } ;
typedef TYPE_1__ ExpandedObjectHeader ;
typedef int Datum ;


 int Assert (int ) ;
 TYPE_1__* DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 int MemoryContextDelete (int ) ;
 int VARATT_IS_EXTERNAL_EXPANDED_RW (int ) ;

void
DeleteExpandedObject(Datum d)
{
 ExpandedObjectHeader *eohptr = DatumGetEOHP(d);


 Assert(VARATT_IS_EXTERNAL_EXPANDED_RW(DatumGetPointer(d)));


 MemoryContextDelete(eohptr->eoh_context);
}
