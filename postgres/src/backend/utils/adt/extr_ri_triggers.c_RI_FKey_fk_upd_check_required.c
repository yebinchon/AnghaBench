
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int Trigger ;
typedef int TransactionId ;
struct TYPE_5__ {int confmatchtype; } ;
typedef int Relation ;
typedef TYPE_1__ RI_ConstraintInfo ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetTransactionId (int ) ;



 int MinTransactionIdAttributeNumber ;
 int RI_KEYS_ALL_NULL ;
 int RI_KEYS_SOME_NULL ;
 int RelationGetDescr (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 TYPE_1__* ri_FetchConstraintInfo (int *,int ,int) ;
 scalar_t__ ri_KeysEqual (int ,int *,int *,TYPE_1__ const*,int) ;
 int ri_NullCheck (int ,int *,TYPE_1__ const*,int) ;
 int slot_getsysattr (int *,int ,int*) ;

bool
RI_FKey_fk_upd_check_required(Trigger *trigger, Relation fk_rel,
         TupleTableSlot *oldslot, TupleTableSlot *newslot)
{
 const RI_ConstraintInfo *riinfo;
 int ri_nullcheck;
 Datum xminDatum;
 TransactionId xmin;
 bool isnull;

 riinfo = ri_FetchConstraintInfo(trigger, fk_rel, 0);

 ri_nullcheck = ri_NullCheck(RelationGetDescr(fk_rel), newslot, riinfo, 0);





 if (ri_nullcheck == RI_KEYS_ALL_NULL)
  return 0;





 else if (ri_nullcheck == RI_KEYS_SOME_NULL)
 {
  switch (riinfo->confmatchtype)
  {
   case 128:





    return 0;

   case 129:




    break;

   case 130:
    return 1;
  }
 }
 xminDatum = slot_getsysattr(oldslot, MinTransactionIdAttributeNumber, &isnull);
 Assert(!isnull);
 xmin = DatumGetTransactionId(xminDatum);
 if (TransactionIdIsCurrentTransactionId(xmin))
  return 1;


 if (ri_KeysEqual(fk_rel, oldslot, newslot, riinfo, 0))
  return 0;


 return 1;
}
