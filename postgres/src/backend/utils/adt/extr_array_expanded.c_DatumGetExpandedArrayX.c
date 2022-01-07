
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int typalign; int typbyval; int typlen; int element_type; } ;
struct TYPE_6__ {scalar_t__ ea_magic; int typalign; int typbyval; int typlen; int element_type; } ;
typedef TYPE_1__ ExpandedArrayHeader ;
typedef int Datum ;
typedef TYPE_2__ ArrayMetaState ;


 int Assert (int) ;
 int CurrentMemoryContext ;
 scalar_t__ DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 scalar_t__ EA_MAGIC ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED_RW (int ) ;
 int expand_array (int ,int ,TYPE_2__*) ;

ExpandedArrayHeader *
DatumGetExpandedArrayX(Datum d, ArrayMetaState *metacache)
{

 if (VARATT_IS_EXTERNAL_EXPANDED_RW(DatumGetPointer(d)))
 {
  ExpandedArrayHeader *eah = (ExpandedArrayHeader *) DatumGetEOHP(d);

  Assert(eah->ea_magic == EA_MAGIC);

  if (metacache)
  {
   metacache->element_type = eah->element_type;
   metacache->typlen = eah->typlen;
   metacache->typbyval = eah->typbyval;
   metacache->typalign = eah->typalign;
  }
  return eah;
 }


 d = expand_array(d, CurrentMemoryContext, metacache);
 return (ExpandedArrayHeader *) DatumGetEOHP(d);
}
