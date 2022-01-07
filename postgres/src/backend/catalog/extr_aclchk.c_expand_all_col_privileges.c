
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int attisdropped; } ;
struct TYPE_4__ {int relnatts; scalar_t__ relkind; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;
typedef TYPE_2__* Form_pg_attribute ;
typedef scalar_t__ AttrNumber ;
typedef int AclMode ;


 int ATTNUM ;
 int Assert (int) ;
 int ERROR ;
 int FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (scalar_t__) ;
 scalar_t__ InvalidAttrNumber ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ RELKIND_VIEW ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int elog (int ,char*,scalar_t__,int ) ;

__attribute__((used)) static void
expand_all_col_privileges(Oid table_oid, Form_pg_class classForm,
        AclMode this_privileges,
        AclMode *col_privileges,
        int num_col_privileges)
{
 AttrNumber curr_att;

 Assert(classForm->relnatts - FirstLowInvalidHeapAttributeNumber < num_col_privileges);
 for (curr_att = FirstLowInvalidHeapAttributeNumber + 1;
   curr_att <= classForm->relnatts;
   curr_att++)
 {
  HeapTuple attTuple;
  bool isdropped;

  if (curr_att == InvalidAttrNumber)
   continue;


  if (classForm->relkind == RELKIND_VIEW && curr_att < 0)
   continue;

  attTuple = SearchSysCache2(ATTNUM,
           ObjectIdGetDatum(table_oid),
           Int16GetDatum(curr_att));
  if (!HeapTupleIsValid(attTuple))
   elog(ERROR, "cache lookup failed for attribute %d of relation %u",
     curr_att, table_oid);

  isdropped = ((Form_pg_attribute) GETSTRUCT(attTuple))->attisdropped;

  ReleaseSysCache(attTuple);


  if (isdropped)
   continue;

  col_privileges[curr_att - FirstLowInvalidHeapAttributeNumber] |= this_privileges;
 }
}
