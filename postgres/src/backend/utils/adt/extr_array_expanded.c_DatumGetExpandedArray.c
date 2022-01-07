
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ea_magic; } ;
typedef TYPE_1__ ExpandedArrayHeader ;
typedef int Datum ;


 int Assert (int) ;
 int CurrentMemoryContext ;
 scalar_t__ DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 scalar_t__ EA_MAGIC ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED_RW (int ) ;
 int expand_array (int ,int ,int *) ;

ExpandedArrayHeader *
DatumGetExpandedArray(Datum d)
{

 if (VARATT_IS_EXTERNAL_EXPANDED_RW(DatumGetPointer(d)))
 {
  ExpandedArrayHeader *eah = (ExpandedArrayHeader *) DatumGetEOHP(d);

  Assert(eah->ea_magic == EA_MAGIC);
  return eah;
 }


 d = expand_array(d, CurrentMemoryContext, ((void*)0));
 return (ExpandedArrayHeader *) DatumGetEOHP(d);
}
