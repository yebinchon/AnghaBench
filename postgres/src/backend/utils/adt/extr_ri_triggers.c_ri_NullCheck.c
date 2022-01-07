
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16 ;
typedef int TupleTableSlot ;
typedef int TupleDesc ;
struct TYPE_3__ {int nkeys; int * fk_attnums; int * pk_attnums; } ;
typedef TYPE_1__ RI_ConstraintInfo ;


 int RI_KEYS_ALL_NULL ;
 int RI_KEYS_NONE_NULL ;
 int RI_KEYS_SOME_NULL ;
 scalar_t__ slot_attisnull (int *,int const) ;

__attribute__((used)) static int
ri_NullCheck(TupleDesc tupDesc,
    TupleTableSlot *slot,
    const RI_ConstraintInfo *riinfo, bool rel_is_pk)
{
 const int16 *attnums;
 bool allnull = 1;
 bool nonenull = 1;

 if (rel_is_pk)
  attnums = riinfo->pk_attnums;
 else
  attnums = riinfo->fk_attnums;

 for (int i = 0; i < riinfo->nkeys; i++)
 {
  if (slot_attisnull(slot, attnums[i]))
   nonenull = 0;
  else
   allnull = 0;
 }

 if (allnull)
  return RI_KEYS_ALL_NULL;

 if (nonenull)
  return RI_KEYS_NONE_NULL;

 return RI_KEYS_SOME_NULL;
}
