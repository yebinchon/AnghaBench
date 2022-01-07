
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ea_magic; } ;
typedef TYPE_1__ ExpandedArrayHeader ;
typedef int Datum ;
typedef int AnyArrayType ;


 int Assert (int) ;
 scalar_t__ DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 scalar_t__ EA_MAGIC ;
 scalar_t__ PG_DETOAST_DATUM (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (int ) ;

AnyArrayType *
DatumGetAnyArrayP(Datum d)
{
 ExpandedArrayHeader *eah;




 if (VARATT_IS_EXTERNAL_EXPANDED(DatumGetPointer(d)))
 {
  eah = (ExpandedArrayHeader *) DatumGetEOHP(d);
  Assert(eah->ea_magic == EA_MAGIC);
  return (AnyArrayType *) eah;
 }


 return (AnyArrayType *) PG_DETOAST_DATUM(d);
}
