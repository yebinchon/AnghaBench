
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {scalar_t__ amopmethod; scalar_t__ amopstrategy; scalar_t__ amoplefttype; scalar_t__ amoprighttype; scalar_t__ amopfamily; } ;
struct TYPE_6__ {int tuple; } ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_amop ;
typedef TYPE_3__ CatCList ;


 int AMOPOPID ;
 scalar_t__ BTGreaterStrategyNumber ;
 scalar_t__ BTLessStrategyNumber ;
 scalar_t__ BTREE_AM_OID ;
 int GETSTRUCT (int *) ;
 scalar_t__ InvalidOid ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCacheList (TYPE_3__*) ;
 TYPE_3__* SearchSysCacheList1 (int ,int ) ;

bool
get_ordering_op_properties(Oid opno,
         Oid *opfamily, Oid *opcintype, int16 *strategy)
{
 bool result = 0;
 CatCList *catlist;
 int i;


 *opfamily = InvalidOid;
 *opcintype = InvalidOid;
 *strategy = 0;





 catlist = SearchSysCacheList1(AMOPOPID, ObjectIdGetDatum(opno));

 for (i = 0; i < catlist->n_members; i++)
 {
  HeapTuple tuple = &catlist->members[i]->tuple;
  Form_pg_amop aform = (Form_pg_amop) GETSTRUCT(tuple);


  if (aform->amopmethod != BTREE_AM_OID)
   continue;

  if (aform->amopstrategy == BTLessStrategyNumber ||
   aform->amopstrategy == BTGreaterStrategyNumber)
  {

   if (aform->amoplefttype == aform->amoprighttype)
   {

    *opfamily = aform->amopfamily;
    *opcintype = aform->amoplefttype;
    *strategy = aform->amopstrategy;
    result = 1;
    break;
   }
  }
 }

 ReleaseSysCacheList(catlist);

 return result;
}
