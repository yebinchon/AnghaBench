
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_9__ {int tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
struct TYPE_11__ {int attlen; int attbyval; } ;
struct TYPE_10__ {int nkeys; int * ff_eq_oprs; scalar_t__* fk_attnums; scalar_t__* pk_attnums; } ;
typedef int Relation ;
typedef TYPE_2__ RI_ConstraintInfo ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int Datum ;


 int RIAttType (int ,scalar_t__ const) ;
 TYPE_3__* TupleDescAttr (int ,scalar_t__ const) ;
 int datum_image_eq (int ,int ,int ,int ) ;
 int ri_AttributesEqual (int ,int ,int ,int ) ;
 int slot_getattr (TYPE_1__*,scalar_t__ const,int*) ;

__attribute__((used)) static bool
ri_KeysEqual(Relation rel, TupleTableSlot *oldslot, TupleTableSlot *newslot,
    const RI_ConstraintInfo *riinfo, bool rel_is_pk)
{
 const int16 *attnums;

 if (rel_is_pk)
  attnums = riinfo->pk_attnums;
 else
  attnums = riinfo->fk_attnums;


 for (int i = 0; i < riinfo->nkeys; i++)
 {
  Datum oldvalue;
  Datum newvalue;
  bool isnull;




  oldvalue = slot_getattr(oldslot, attnums[i], &isnull);
  if (isnull)
   return 0;




  newvalue = slot_getattr(newslot, attnums[i], &isnull);
  if (isnull)
   return 0;

  if (rel_is_pk)
  {
   Form_pg_attribute att = TupleDescAttr(oldslot->tts_tupleDescriptor, attnums[i] - 1);

   if (!datum_image_eq(oldvalue, newvalue, att->attbyval, att->attlen))
    return 0;
  }
  else
  {





   if (!ri_AttributesEqual(riinfo->ff_eq_oprs[i], RIAttType(rel, attnums[i]),
         oldvalue, newvalue))
    return 0;
  }
 }

 return 1;
}
