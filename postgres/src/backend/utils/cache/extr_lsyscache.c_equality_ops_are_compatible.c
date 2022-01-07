
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {scalar_t__ amopmethod; int amopfamily; } ;
struct TYPE_6__ {int tuple; } ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_amop ;
typedef TYPE_3__ CatCList ;


 int AMOPOPID ;
 scalar_t__ BTREE_AM_OID ;
 int GETSTRUCT (int *) ;
 scalar_t__ HASH_AM_OID ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCacheList (TYPE_3__*) ;
 TYPE_3__* SearchSysCacheList1 (int ,int ) ;
 scalar_t__ op_in_opfamily (scalar_t__,int ) ;

bool
equality_ops_are_compatible(Oid opno1, Oid opno2)
{
 bool result;
 CatCList *catlist;
 int i;


 if (opno1 == opno2)
  return 1;




 catlist = SearchSysCacheList1(AMOPOPID, ObjectIdGetDatum(opno1));

 result = 0;
 for (i = 0; i < catlist->n_members; i++)
 {
  HeapTuple op_tuple = &catlist->members[i]->tuple;
  Form_pg_amop op_form = (Form_pg_amop) GETSTRUCT(op_tuple);


  if (op_form->amopmethod == BTREE_AM_OID ||
   op_form->amopmethod == HASH_AM_OID)
  {
   if (op_in_opfamily(opno2, op_form->amopfamily))
   {
    result = 1;
    break;
   }
  }
 }

 ReleaseSysCacheList(catlist);

 return result;
}
