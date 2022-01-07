
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16 ;
typedef int TupleTableSlot ;
struct TYPE_3__ {int nkeys; int * fk_attnums; int * pk_attnums; } ;
typedef int Relation ;
typedef TYPE_1__ RI_ConstraintInfo ;
typedef int Datum ;


 int slot_getattr (int *,int const,int*) ;

__attribute__((used)) static void
ri_ExtractValues(Relation rel, TupleTableSlot *slot,
     const RI_ConstraintInfo *riinfo, bool rel_is_pk,
     Datum *vals, char *nulls)
{
 const int16 *attnums;
 bool isnull;

 if (rel_is_pk)
  attnums = riinfo->pk_attnums;
 else
  attnums = riinfo->fk_attnums;

 for (int i = 0; i < riinfo->nkeys; i++)
 {
  vals[i] = slot_getattr(slot, attnums[i], &isnull);
  nulls[i] = isnull ? 'n' : ' ';
 }
}
