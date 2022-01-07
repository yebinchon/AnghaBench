
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int repl_val ;
typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_12__ {scalar_t__ atthasmissing; } ;
struct TYPE_11__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Datum ;


 int ATTNUM ;
 int Anum_pg_attribute_atthasmissing ;
 int Anum_pg_attribute_attmissingval ;
 int AttributeRelationId ;
 int BoolGetDatum (int) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int Int16GetDatum (int) ;
 int Natts_pg_attribute ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int RelationGetNumberOfAttributes (int ) ;
 int RelationGetRelid (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache2 (int ,int ,int ) ;
 int elog (int ,char*,int,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RelationClearMissing(Relation rel)
{
 Relation attr_rel;
 Oid relid = RelationGetRelid(rel);
 int natts = RelationGetNumberOfAttributes(rel);
 int attnum;
 Datum repl_val[Natts_pg_attribute];
 bool repl_null[Natts_pg_attribute];
 bool repl_repl[Natts_pg_attribute];
 Form_pg_attribute attrtuple;
 HeapTuple tuple,
    newtuple;

 memset(repl_val, 0, sizeof(repl_val));
 memset(repl_null, 0, sizeof(repl_null));
 memset(repl_repl, 0, sizeof(repl_repl));

 repl_val[Anum_pg_attribute_atthasmissing - 1] = BoolGetDatum(0);
 repl_null[Anum_pg_attribute_attmissingval - 1] = 1;

 repl_repl[Anum_pg_attribute_atthasmissing - 1] = 1;
 repl_repl[Anum_pg_attribute_attmissingval - 1] = 1;



 attr_rel = table_open(AttributeRelationId, RowExclusiveLock);


 for (attnum = 1; attnum <= natts; attnum++)
 {
  tuple = SearchSysCache2(ATTNUM,
        ObjectIdGetDatum(relid),
        Int16GetDatum(attnum));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for attribute %d of relation %u",
     attnum, relid);

  attrtuple = (Form_pg_attribute) GETSTRUCT(tuple);


  if (attrtuple->atthasmissing)
  {
   newtuple = heap_modify_tuple(tuple, RelationGetDescr(attr_rel),
           repl_val, repl_null, repl_repl);

   CatalogTupleUpdate(attr_rel, &newtuple->t_self, newtuple);

   heap_freetuple(newtuple);
  }

  ReleaseSysCache(tuple);
 }





 table_close(attr_rel, RowExclusiveLock);
}
