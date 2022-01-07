
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int varattrib_1b_e ;
struct TYPE_3__ {int * eohptr; } ;
typedef TYPE_1__ varatt_expanded ;
typedef int ptr ;
typedef int ExpandedObjectHeader ;
typedef int Datum ;


 int Assert (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int VARATT_IS_EXPANDED_HEADER (int *) ;
 int VARATT_IS_EXTERNAL_EXPANDED (int *) ;
 int VARDATA_EXTERNAL (int *) ;
 int memcpy (TYPE_1__*,int ,int) ;

ExpandedObjectHeader *
DatumGetEOHP(Datum d)
{
 varattrib_1b_e *datum = (varattrib_1b_e *) DatumGetPointer(d);
 varatt_expanded ptr;

 Assert(VARATT_IS_EXTERNAL_EXPANDED(datum));
 memcpy(&ptr, VARDATA_EXTERNAL(datum), sizeof(ptr));
 Assert(VARATT_IS_EXPANDED_HEADER(ptr.eohptr));
 return ptr.eohptr;
}
