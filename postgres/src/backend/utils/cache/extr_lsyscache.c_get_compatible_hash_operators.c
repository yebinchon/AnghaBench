
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {scalar_t__ amopmethod; scalar_t__ amopstrategy; scalar_t__ amoplefttype; scalar_t__ amoprighttype; int amopfamily; } ;
struct TYPE_6__ {int tuple; } ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_amop ;
typedef TYPE_3__ CatCList ;


 int AMOPOPID ;
 int GETSTRUCT (int *) ;
 scalar_t__ HASH_AM_OID ;
 scalar_t__ HTEqualStrategyNumber ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int ReleaseSysCacheList (TYPE_3__*) ;
 TYPE_3__* SearchSysCacheList1 (int ,int ) ;
 int get_opfamily_member (int ,scalar_t__,scalar_t__,scalar_t__) ;

bool
get_compatible_hash_operators(Oid opno,
         Oid *lhs_opno, Oid *rhs_opno)
{
 bool result = 0;
 CatCList *catlist;
 int i;


 if (lhs_opno)
  *lhs_opno = InvalidOid;
 if (rhs_opno)
  *rhs_opno = InvalidOid;






 catlist = SearchSysCacheList1(AMOPOPID, ObjectIdGetDatum(opno));

 for (i = 0; i < catlist->n_members; i++)
 {
  HeapTuple tuple = &catlist->members[i]->tuple;
  Form_pg_amop aform = (Form_pg_amop) GETSTRUCT(tuple);

  if (aform->amopmethod == HASH_AM_OID &&
   aform->amopstrategy == HTEqualStrategyNumber)
  {

   if (aform->amoplefttype == aform->amoprighttype)
   {
    if (lhs_opno)
     *lhs_opno = opno;
    if (rhs_opno)
     *rhs_opno = opno;
    result = 1;
    break;
   }






   if (lhs_opno)
   {
    *lhs_opno = get_opfamily_member(aform->amopfamily,
            aform->amoplefttype,
            aform->amoplefttype,
            HTEqualStrategyNumber);
    if (!OidIsValid(*lhs_opno))
     continue;

    if (!rhs_opno)
    {
     result = 1;
     break;
    }
   }
   if (rhs_opno)
   {
    *rhs_opno = get_opfamily_member(aform->amopfamily,
            aform->amoprighttype,
            aform->amoprighttype,
            HTEqualStrategyNumber);
    if (!OidIsValid(*rhs_opno))
    {

     if (lhs_opno)
      *lhs_opno = InvalidOid;
     continue;
    }

    result = 1;
    break;
   }
  }
 }

 ReleaseSysCacheList(catlist);

 return result;
}
