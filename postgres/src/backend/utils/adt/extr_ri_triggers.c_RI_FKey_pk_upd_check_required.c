
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int Trigger ;
typedef int Relation ;
typedef int RI_ConstraintInfo ;


 scalar_t__ RI_KEYS_NONE_NULL ;
 int RelationGetDescr (int ) ;
 int * ri_FetchConstraintInfo (int *,int ,int) ;
 scalar_t__ ri_KeysEqual (int ,int *,int *,int const*,int) ;
 scalar_t__ ri_NullCheck (int ,int *,int const*,int) ;

bool
RI_FKey_pk_upd_check_required(Trigger *trigger, Relation pk_rel,
         TupleTableSlot *oldslot, TupleTableSlot *newslot)
{
 const RI_ConstraintInfo *riinfo;

 riinfo = ri_FetchConstraintInfo(trigger, pk_rel, 1);





 if (ri_NullCheck(RelationGetDescr(pk_rel), oldslot, riinfo, 1) != RI_KEYS_NONE_NULL)
  return 0;


 if (newslot && ri_KeysEqual(pk_rel, oldslot, newslot, riinfo, 1))
  return 0;


 return 1;
}
