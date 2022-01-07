
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ relkind; int relnatts; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;
typedef int AttrNumber ;


 int ATTNUM ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (int) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ RELKIND_COMPOSITE_TYPE ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 scalar_t__ RELKIND_SEQUENCE ;
 int RELOID ;
 scalar_t__ RelationRelationId ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 int recordExtensionInitPrivWorker (scalar_t__,scalar_t__,int,int *) ;

void
removeExtObjInitPriv(Oid objoid, Oid classoid)
{





 if (classoid == RelationRelationId)
 {
  Form_pg_class pg_class_tuple;
  HeapTuple tuple;

  tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(objoid));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for relation %u", objoid);
  pg_class_tuple = (Form_pg_class) GETSTRUCT(tuple);


  if (pg_class_tuple->relkind == RELKIND_INDEX ||
   pg_class_tuple->relkind == RELKIND_PARTITIONED_INDEX)
   return;


  if (pg_class_tuple->relkind == RELKIND_COMPOSITE_TYPE)
   return;






  if (pg_class_tuple->relkind != RELKIND_SEQUENCE)
  {
   AttrNumber curr_att;
   AttrNumber nattrs = pg_class_tuple->relnatts;

   for (curr_att = 1; curr_att <= nattrs; curr_att++)
   {
    HeapTuple attTuple;

    attTuple = SearchSysCache2(ATTNUM,
             ObjectIdGetDatum(objoid),
             Int16GetDatum(curr_att));

    if (!HeapTupleIsValid(attTuple))
     continue;



    recordExtensionInitPrivWorker(objoid, classoid, curr_att, ((void*)0));

    ReleaseSysCache(attTuple);
   }
  }

  ReleaseSysCache(tuple);
 }


 recordExtensionInitPrivWorker(objoid, classoid, 0, ((void*)0));
}
