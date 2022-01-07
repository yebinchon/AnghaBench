
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {scalar_t__ amopmethod; scalar_t__ amopstrategy; int amopfamily; } ;
struct TYPE_6__ {int tuple; } ;
typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_amop ;
typedef TYPE_3__ CatCList ;


 int AMOPOPID ;
 scalar_t__ BTEqualStrategyNumber ;
 scalar_t__ BTREE_AM_OID ;
 int GETSTRUCT (int *) ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCacheList (TYPE_3__*) ;
 TYPE_3__* SearchSysCacheList1 (int ,int ) ;
 int * lappend_oid (int *,int ) ;

List *
get_mergejoin_opfamilies(Oid opno)
{
 List *result = NIL;
 CatCList *catlist;
 int i;





 catlist = SearchSysCacheList1(AMOPOPID, ObjectIdGetDatum(opno));

 for (i = 0; i < catlist->n_members; i++)
 {
  HeapTuple tuple = &catlist->members[i]->tuple;
  Form_pg_amop aform = (Form_pg_amop) GETSTRUCT(tuple);


  if (aform->amopmethod == BTREE_AM_OID &&
   aform->amopstrategy == BTEqualStrategyNumber)
   result = lappend_oid(result, aform->amopfamily);
 }

 ReleaseSysCacheList(catlist);

 return result;
}
