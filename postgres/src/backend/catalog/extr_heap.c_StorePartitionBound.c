
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int new_val ;
typedef int new_repl ;
typedef int new_null ;
struct TYPE_16__ {int relispartition; } ;
struct TYPE_15__ {int t_self; } ;
struct TYPE_14__ {scalar_t__ is_default; } ;
typedef int Relation ;
typedef TYPE_1__ PartitionBoundSpec ;
typedef int Oid ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_class ;
typedef int Datum ;


 int Anum_pg_class_relpartbound ;
 int Assert (int) ;
 int CStringGetTextDatum (int ) ;
 int CacheInvalidateRelcache (int ) ;
 int CacheInvalidateRelcacheByRelid (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int CommandCounterIncrement () ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int Natts_pg_class ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int RELOID ;
 int RelationGetDescr (int ) ;
 int RelationGetPartitionDesc (int ) ;
 int RelationGetRelid (int ) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCacheCopy1 (int ,int ) ;
 int SysCacheGetAttr (int ,TYPE_2__*,int,int*) ;
 int elog (int ,char*,int ) ;
 int get_default_oid_from_partdesc (int ) ;
 int heap_freetuple (TYPE_2__*) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int nodeToString (TYPE_1__*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int update_default_partition_oid (int ,int ) ;

void
StorePartitionBound(Relation rel, Relation parent, PartitionBoundSpec *bound)
{
 Relation classRel;
 HeapTuple tuple,
    newtuple;
 Datum new_val[Natts_pg_class];
 bool new_null[Natts_pg_class],
    new_repl[Natts_pg_class];
 Oid defaultPartOid;


 classRel = table_open(RelationRelationId, RowExclusiveLock);
 tuple = SearchSysCacheCopy1(RELOID,
        ObjectIdGetDatum(RelationGetRelid(rel)));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u",
    RelationGetRelid(rel));
 memset(new_val, 0, sizeof(new_val));
 memset(new_null, 0, sizeof(new_null));
 memset(new_repl, 0, sizeof(new_repl));
 new_val[Anum_pg_class_relpartbound - 1] = CStringGetTextDatum(nodeToString(bound));
 new_null[Anum_pg_class_relpartbound - 1] = 0;
 new_repl[Anum_pg_class_relpartbound - 1] = 1;
 newtuple = heap_modify_tuple(tuple, RelationGetDescr(classRel),
         new_val, new_null, new_repl);

 ((Form_pg_class) GETSTRUCT(newtuple))->relispartition = 1;
 CatalogTupleUpdate(classRel, &newtuple->t_self, newtuple);
 heap_freetuple(newtuple);
 table_close(classRel, RowExclusiveLock);





 if (bound->is_default)
  update_default_partition_oid(RelationGetRelid(parent),
          RelationGetRelid(rel));


 CommandCounterIncrement();







 defaultPartOid = get_default_oid_from_partdesc(RelationGetPartitionDesc(parent));
 if (OidIsValid(defaultPartOid))
  CacheInvalidateRelcacheByRelid(defaultPartOid);

 CacheInvalidateRelcache(parent);
}
