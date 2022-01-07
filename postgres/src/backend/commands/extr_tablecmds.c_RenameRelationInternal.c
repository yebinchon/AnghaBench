
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int relname; } ;
struct TYPE_18__ {int t_self; } ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {scalar_t__ relkind; int reltype; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_class ;


 int AccessExclusiveLock ;
 int CatalogTupleUpdate (TYPE_2__*,int *,TYPE_3__*) ;
 int ERRCODE_DUPLICATE_TABLE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 int HeapTupleIsValid (TYPE_3__*) ;
 scalar_t__ InvalidOid ;
 int InvokeObjectPostAlterHookArg (int ,int ,int ,scalar_t__,int) ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RELOID ;
 int RelationGetNamespace (TYPE_2__*) ;
 int RelationRelationId ;
 int RenameConstraintById (int ,char const*) ;
 int RenameTypeInternal (int ,char const*,int ) ;
 int RowExclusiveLock ;
 TYPE_3__* SearchSysCacheCopy1 (int ,int ) ;
 int ShareUpdateExclusiveLock ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int get_index_constraint (int ) ;
 scalar_t__ get_relname_relid (char const*,int ) ;
 int heap_freetuple (TYPE_3__*) ;
 int namestrcpy (int *,char const*) ;
 int relation_close (TYPE_2__*,int ) ;
 TYPE_2__* relation_open (int ,int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

void
RenameRelationInternal(Oid myrelid, const char *newrelname, bool is_internal, bool is_index)
{
 Relation targetrelation;
 Relation relrelation;
 HeapTuple reltup;
 Form_pg_class relform;
 Oid namespaceId;
 targetrelation = relation_open(myrelid, is_index ? ShareUpdateExclusiveLock : AccessExclusiveLock);
 namespaceId = RelationGetNamespace(targetrelation);




 relrelation = table_open(RelationRelationId, RowExclusiveLock);

 reltup = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(myrelid));
 if (!HeapTupleIsValid(reltup))
  elog(ERROR, "cache lookup failed for relation %u", myrelid);
 relform = (Form_pg_class) GETSTRUCT(reltup);

 if (get_relname_relid(newrelname, namespaceId) != InvalidOid)
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_TABLE),
     errmsg("relation \"%s\" already exists",
      newrelname)));





 namestrcpy(&(relform->relname), newrelname);

 CatalogTupleUpdate(relrelation, &reltup->t_self, reltup);

 InvokeObjectPostAlterHookArg(RelationRelationId, myrelid, 0,
         InvalidOid, is_internal);

 heap_freetuple(reltup);
 table_close(relrelation, RowExclusiveLock);




 if (OidIsValid(targetrelation->rd_rel->reltype))
  RenameTypeInternal(targetrelation->rd_rel->reltype,
         newrelname, namespaceId);




 if (targetrelation->rd_rel->relkind == RELKIND_INDEX ||
  targetrelation->rd_rel->relkind == RELKIND_PARTITIONED_INDEX)
 {
  Oid constraintId = get_index_constraint(myrelid);

  if (OidIsValid(constraintId))
   RenameConstraintById(constraintId, newrelname);
 }




 relation_close(targetrelation, NoLock);
}
