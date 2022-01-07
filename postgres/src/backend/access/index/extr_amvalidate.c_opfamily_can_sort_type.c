
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {scalar_t__ opcfamily; scalar_t__ opcintype; } ;
struct TYPE_6__ {int tuple; } ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_opclass ;
typedef TYPE_3__ CatCList ;


 int BTREE_AM_OID ;
 int CLAAMNAMENSP ;
 int GETSTRUCT (int *) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseCatCacheList (TYPE_3__*) ;
 TYPE_3__* SearchSysCacheList1 (int ,int ) ;

bool
opfamily_can_sort_type(Oid opfamilyoid, Oid datatypeoid)
{
 bool result = 0;
 CatCList *opclist;
 int i;






 opclist = SearchSysCacheList1(CLAAMNAMENSP, ObjectIdGetDatum(BTREE_AM_OID));

 for (i = 0; i < opclist->n_members; i++)
 {
  HeapTuple classtup = &opclist->members[i]->tuple;
  Form_pg_opclass classform = (Form_pg_opclass) GETSTRUCT(classtup);

  if (classform->opcfamily == opfamilyoid &&
   classform->opcintype == datatypeoid)
  {
   result = 1;
   break;
  }
 }

 ReleaseCatCacheList(opclist);

 return result;
}
