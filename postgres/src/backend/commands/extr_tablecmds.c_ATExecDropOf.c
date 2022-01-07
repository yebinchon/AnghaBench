
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int reloftype; } ;
struct TYPE_18__ {int t_self; } ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {int reloftype; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int LOCKMODE ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_class ;


 int CatalogTupleUpdate (TYPE_2__*,int *,TYPE_3__*) ;
 int DEPENDENCY_NORMAL ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 int HeapTupleIsValid (TYPE_3__*) ;
 int InvalidOid ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int RELOID ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_3__* SearchSysCacheCopy1 (int ,int ) ;
 int TypeRelationId ;
 int drop_parent_dependency (int ,int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int heap_freetuple (TYPE_3__*) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static void
ATExecDropOf(Relation rel, LOCKMODE lockmode)
{
 Oid relid = RelationGetRelid(rel);
 Relation relationRelation;
 HeapTuple tuple;

 if (!OidIsValid(rel->rd_rel->reloftype))
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not a typed table",
      RelationGetRelationName(rel))));






 drop_parent_dependency(relid, TypeRelationId, rel->rd_rel->reloftype,
         DEPENDENCY_NORMAL);


 relationRelation = table_open(RelationRelationId, RowExclusiveLock);
 tuple = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u", relid);
 ((Form_pg_class) GETSTRUCT(tuple))->reloftype = InvalidOid;
 CatalogTupleUpdate(relationRelation, &tuple->t_self, tuple);

 InvokeObjectPostAlterHook(RelationRelationId, relid, 0);

 heap_freetuple(tuple);
 table_close(relationRelation, RowExclusiveLock);
}
