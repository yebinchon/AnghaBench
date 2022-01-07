
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_6__ ;
typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;


typedef int int16 ;
typedef int bits16 ;
typedef int TupleDesc ;
typedef scalar_t__ TransactionId ;
struct TYPE_46__ {int opcname; } ;
struct TYPE_45__ {int ii_NumIndexAttrs; int ii_NumIndexKeyAttrs; scalar_t__* ii_IndexAttrNumbers; scalar_t__ ii_Predicate; scalar_t__ ii_Expressions; scalar_t__ ii_Unique; int * ii_ExclusionOps; } ;
struct TYPE_44__ {scalar_t__ objectId; scalar_t__ objectSubId; void* classId; } ;
struct TYPE_43__ {TYPE_1__* rd_index; int * rd_indexcxt; TYPE_2__* rd_rel; } ;
struct TYPE_42__ {int relisshared; char relpersistence; scalar_t__ relispartition; scalar_t__ relam; int relowner; } ;
struct TYPE_41__ {int indnkeyatts; } ;
typedef TYPE_3__* Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_4__ ObjectAddress ;
typedef int Node ;
typedef scalar_t__ MultiXactId ;
typedef int List ;
typedef TYPE_5__ IndexInfo ;
typedef int HeapTuple ;
typedef TYPE_6__* Form_pg_opclass ;
typedef int Datum ;


 int AccessExclusiveLock ;
 int AppendAttributeTuples (TYPE_3__*,int) ;
 int Assert (int) ;
 scalar_t__ BPCHAR_BTREE_PATTERN_OPS_OID ;
 int CLAOID ;
 char CONSTRAINT_EXCLUSION ;
 char CONSTRAINT_PRIMARY ;
 int CONSTRAINT_RELATION ;
 char CONSTRAINT_UNIQUE ;
 int CacheInvalidateRelcache (TYPE_3__*) ;
 void* CollationRelationId ;
 int CommandCounterIncrement () ;
 scalar_t__ ConstraintNameIsUsed (int ,scalar_t__,char const*) ;
 int ConstructTupleDescriptor (TYPE_3__*,TYPE_5__*,int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int DEPENDENCY_AUTO ;
 int DEPENDENCY_NORMAL ;
 int DEPENDENCY_PARTITION_PRI ;
 int DEPENDENCY_PARTITION_SEC ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_DUPLICATE_TABLE ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 scalar_t__ GetNewRelFileNode (scalar_t__,TYPE_3__*,char) ;
 int HeapTupleIsValid (int ) ;
 int INDEX_CONSTR_CREATE_DEFERRABLE ;
 int INDEX_CREATE_ADD_CONSTRAINT ;
 int INDEX_CREATE_CONCURRENT ;
 int INDEX_CREATE_IF_NOT_EXISTS ;
 int INDEX_CREATE_INVALID ;
 int INDEX_CREATE_IS_PRIMARY ;
 int INDEX_CREATE_PARTITIONED ;
 int INDEX_CREATE_SKIP_BUILD ;
 int InitializeAttributeOids (TYPE_3__*,int,scalar_t__) ;
 int InsertPgClassTuple (TYPE_3__*,TYPE_3__*,scalar_t__,int ,int ) ;
 scalar_t__ InvalidMultiXactId ;
 scalar_t__ InvalidOid ;
 scalar_t__ InvalidTransactionId ;
 int InvokeObjectPostCreateHookArg (void*,scalar_t__,int ,int) ;
 scalar_t__ IsBinaryUpgrade ;
 scalar_t__ IsBootstrapProcessingMode () ;
 scalar_t__ IsCatalogRelation (TYPE_3__*) ;
 scalar_t__ IsNormalProcessingMode () ;
 scalar_t__ IsSystemRelation (TYPE_3__*) ;
 int LockRelation (TYPE_3__*,int ) ;
 int NOTICE ;
 int NameStr (int ) ;
 int NoLock ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 void* OperatorClassRelationId ;
 char RELKIND_INDEX ;
 char RELKIND_PARTITIONED_INDEX ;
 scalar_t__ RelationGetNamespace (TYPE_3__*) ;
 int RelationGetRelationName (TYPE_3__*) ;
 scalar_t__ RelationGetRelid (TYPE_3__*) ;
 int RelationInitIndexAccessInfo (TYPE_3__*) ;
 int RelationIsMapped (TYPE_3__*) ;
 void* RelationRelationId ;
 int ReleaseSysCache (int ) ;
 int RowExclusiveLock ;
 int SearchSysCache1 (int ,int ) ;
 int SetRelationHasSubclass (scalar_t__,int) ;
 int StoreSingleInheritance (scalar_t__,scalar_t__,int) ;
 scalar_t__ TEXT_BTREE_PATTERN_OPS_OID ;
 int UpdateIndexRelation (scalar_t__,scalar_t__,scalar_t__,TYPE_5__*,scalar_t__*,scalar_t__*,int *,int,int,int,int,int) ;
 scalar_t__ VARCHAR_BTREE_PATTERN_OPS_OID ;
 scalar_t__ binary_upgrade_next_index_pg_class_oid ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int get_collation_isdeterministic (scalar_t__) ;
 scalar_t__ get_relname_relid (char const*,scalar_t__) ;
 TYPE_3__* heap_create (char const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,char,char,int,int,int,scalar_t__*,scalar_t__*) ;
 int index_build (TYPE_3__*,TYPE_3__*,TYPE_5__*,int,int) ;
 int index_close (TYPE_3__*,int ) ;
 TYPE_4__ index_constraint_create (TYPE_3__*,scalar_t__,scalar_t__,TYPE_5__*,char const*,char,int,int,int) ;
 int index_register (scalar_t__,scalar_t__,TYPE_5__*) ;
 int index_update_stats (TYPE_3__*,int,double) ;
 int recordDependencyOn (TYPE_4__*,TYPE_4__*,int ) ;
 int recordDependencyOnSingleRelExpr (TYPE_4__*,int *,scalar_t__,int ,int ,int) ;
 int table_close (TYPE_3__*,int ) ;
 TYPE_3__* table_open (void*,int ) ;

Oid
index_create(Relation heapRelation,
    const char *indexRelationName,
    Oid indexRelationId,
    Oid parentIndexRelid,
    Oid parentConstraintId,
    Oid relFileNode,
    IndexInfo *indexInfo,
    List *indexColNames,
    Oid accessMethodObjectId,
    Oid tableSpaceId,
    Oid *collationObjectId,
    Oid *classObjectId,
    int16 *coloptions,
    Datum reloptions,
    bits16 flags,
    bits16 constr_flags,
    bool allow_system_table_mods,
    bool is_internal,
    Oid *constraintId)
{
 Oid heapRelationId = RelationGetRelid(heapRelation);
 Relation pg_class;
 Relation indexRelation;
 TupleDesc indexTupDesc;
 bool shared_relation;
 bool mapped_relation;
 bool is_exclusion;
 Oid namespaceId;
 int i;
 char relpersistence;
 bool isprimary = (flags & INDEX_CREATE_IS_PRIMARY) != 0;
 bool invalid = (flags & INDEX_CREATE_INVALID) != 0;
 bool concurrent = (flags & INDEX_CREATE_CONCURRENT) != 0;
 bool partitioned = (flags & INDEX_CREATE_PARTITIONED) != 0;
 char relkind;
 TransactionId relfrozenxid;
 MultiXactId relminmxid;


 Assert((constr_flags == 0) ||
     ((flags & INDEX_CREATE_ADD_CONSTRAINT) != 0));

 Assert(!partitioned || (flags & INDEX_CREATE_SKIP_BUILD));

 relkind = partitioned ? RELKIND_PARTITIONED_INDEX : RELKIND_INDEX;
 is_exclusion = (indexInfo->ii_ExclusionOps != ((void*)0));

 pg_class = table_open(RelationRelationId, RowExclusiveLock);







 namespaceId = RelationGetNamespace(heapRelation);
 shared_relation = heapRelation->rd_rel->relisshared;
 mapped_relation = RelationIsMapped(heapRelation);
 relpersistence = heapRelation->rd_rel->relpersistence;




 if (indexInfo->ii_NumIndexAttrs < 1)
  elog(ERROR, "must index at least one column");

 if (!allow_system_table_mods &&
  IsSystemRelation(heapRelation) &&
  IsNormalProcessingMode())
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("user-defined indexes on system catalog tables are not supported")));
 for (i = 0; i < indexInfo->ii_NumIndexKeyAttrs; i++)
 {
  Oid collation = collationObjectId[i];
  Oid opclass = classObjectId[i];

  if (collation)
  {
   if ((opclass == TEXT_BTREE_PATTERN_OPS_OID ||
     opclass == VARCHAR_BTREE_PATTERN_OPS_OID ||
     opclass == BPCHAR_BTREE_PATTERN_OPS_OID) &&
    !get_collation_isdeterministic(collation))
   {
    HeapTuple classtup;

    classtup = SearchSysCache1(CLAOID, ObjectIdGetDatum(opclass));
    if (!HeapTupleIsValid(classtup))
     elog(ERROR, "cache lookup failed for operator class %u", opclass);
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("nondeterministic collations are not supported for operator class \"%s\"",
        NameStr(((Form_pg_opclass) GETSTRUCT(classtup))->opcname))));
    ReleaseSysCache(classtup);
   }
  }
 }





 if (concurrent &&
  IsCatalogRelation(heapRelation))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("concurrent index creation on system catalog tables is not supported")));





 if (concurrent && is_exclusion)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("concurrent index creation for exclusion constraints is not supported")));





 if (shared_relation && !IsBootstrapProcessingMode())
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("shared indexes cannot be created after initdb")));




 if (shared_relation && tableSpaceId != GLOBALTABLESPACE_OID)
  elog(ERROR, "shared relations must be placed in pg_global tablespace");







 if (get_relname_relid(indexRelationName, namespaceId))
 {
  if ((flags & INDEX_CREATE_IF_NOT_EXISTS) != 0)
  {
   ereport(NOTICE,
     (errcode(ERRCODE_DUPLICATE_TABLE),
      errmsg("relation \"%s\" already exists, skipping",
       indexRelationName)));
   table_close(pg_class, RowExclusiveLock);
   return InvalidOid;
  }

  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_TABLE),
     errmsg("relation \"%s\" already exists",
      indexRelationName)));
 }

 if ((flags & INDEX_CREATE_ADD_CONSTRAINT) != 0 &&
  ConstraintNameIsUsed(CONSTRAINT_RELATION, heapRelationId,
        indexRelationName))
 {




  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("constraint \"%s\" for relation \"%s\" already exists",
      indexRelationName, RelationGetRelationName(heapRelation))));
 }




 indexTupDesc = ConstructTupleDescriptor(heapRelation,
           indexInfo,
           indexColNames,
           accessMethodObjectId,
           collationObjectId,
           classObjectId);







 if (!OidIsValid(indexRelationId))
 {

  if (IsBinaryUpgrade)
  {
   if (!OidIsValid(binary_upgrade_next_index_pg_class_oid))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("pg_class index OID value not set when in binary upgrade mode")));

   indexRelationId = binary_upgrade_next_index_pg_class_oid;
   binary_upgrade_next_index_pg_class_oid = InvalidOid;
  }
  else
  {
   indexRelationId =
    GetNewRelFileNode(tableSpaceId, pg_class, relpersistence);
  }
 }






 indexRelation = heap_create(indexRelationName,
        namespaceId,
        tableSpaceId,
        indexRelationId,
        relFileNode,
        accessMethodObjectId,
        indexTupDesc,
        relkind,
        relpersistence,
        shared_relation,
        mapped_relation,
        allow_system_table_mods,
        &relfrozenxid,
        &relminmxid);

 Assert(relfrozenxid == InvalidTransactionId);
 Assert(relminmxid == InvalidMultiXactId);
 Assert(indexRelationId == RelationGetRelid(indexRelation));






 LockRelation(indexRelation, AccessExclusiveLock);







 indexRelation->rd_rel->relowner = heapRelation->rd_rel->relowner;
 indexRelation->rd_rel->relam = accessMethodObjectId;
 indexRelation->rd_rel->relispartition = OidIsValid(parentIndexRelid);




 InsertPgClassTuple(pg_class, indexRelation,
        RelationGetRelid(indexRelation),
        (Datum) 0,
        reloptions);


 table_close(pg_class, RowExclusiveLock);





 InitializeAttributeOids(indexRelation,
       indexInfo->ii_NumIndexAttrs,
       indexRelationId);




 AppendAttributeTuples(indexRelation, indexInfo->ii_NumIndexAttrs);
 UpdateIndexRelation(indexRelationId, heapRelationId, parentIndexRelid,
      indexInfo,
      collationObjectId, classObjectId, coloptions,
      isprimary, is_exclusion,
      (constr_flags & INDEX_CONSTR_CREATE_DEFERRABLE) == 0,
      !concurrent && !invalid,
      !concurrent);





 CacheInvalidateRelcache(heapRelation);


 if (OidIsValid(parentIndexRelid))
 {
  StoreSingleInheritance(indexRelationId, parentIndexRelid, 1);
  SetRelationHasSubclass(parentIndexRelid, 1);
 }
 if (!IsBootstrapProcessingMode())
 {
  ObjectAddress myself,
     referenced;

  myself.classId = RelationRelationId;
  myself.objectId = indexRelationId;
  myself.objectSubId = 0;

  if ((flags & INDEX_CREATE_ADD_CONSTRAINT) != 0)
  {
   char constraintType;
   ObjectAddress localaddr;

   if (isprimary)
    constraintType = CONSTRAINT_PRIMARY;
   else if (indexInfo->ii_Unique)
    constraintType = CONSTRAINT_UNIQUE;
   else if (is_exclusion)
    constraintType = CONSTRAINT_EXCLUSION;
   else
   {
    elog(ERROR, "constraint must be PRIMARY, UNIQUE or EXCLUDE");
    constraintType = 0;
   }

   localaddr = index_constraint_create(heapRelation,
            indexRelationId,
            parentConstraintId,
            indexInfo,
            indexRelationName,
            constraintType,
            constr_flags,
            allow_system_table_mods,
            is_internal);
   if (constraintId)
    *constraintId = localaddr.objectId;
  }
  else
  {
   bool have_simple_col = 0;


   for (i = 0; i < indexInfo->ii_NumIndexAttrs; i++)
   {
    if (indexInfo->ii_IndexAttrNumbers[i] != 0)
    {
     referenced.classId = RelationRelationId;
     referenced.objectId = heapRelationId;
     referenced.objectSubId = indexInfo->ii_IndexAttrNumbers[i];

     recordDependencyOn(&myself, &referenced, DEPENDENCY_AUTO);

     have_simple_col = 1;
    }
   }







   if (!have_simple_col)
   {
    referenced.classId = RelationRelationId;
    referenced.objectId = heapRelationId;
    referenced.objectSubId = 0;

    recordDependencyOn(&myself, &referenced, DEPENDENCY_AUTO);
   }
  }







  if (OidIsValid(parentIndexRelid))
  {
   referenced.classId = RelationRelationId;
   referenced.objectId = parentIndexRelid;
   referenced.objectSubId = 0;

   recordDependencyOn(&myself, &referenced, DEPENDENCY_PARTITION_PRI);

   referenced.classId = RelationRelationId;
   referenced.objectId = heapRelationId;
   referenced.objectSubId = 0;

   recordDependencyOn(&myself, &referenced, DEPENDENCY_PARTITION_SEC);
  }



  for (i = 0; i < indexInfo->ii_NumIndexKeyAttrs; i++)
  {
   if (OidIsValid(collationObjectId[i]) &&
    collationObjectId[i] != DEFAULT_COLLATION_OID)
   {
    referenced.classId = CollationRelationId;
    referenced.objectId = collationObjectId[i];
    referenced.objectSubId = 0;

    recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
   }
  }


  for (i = 0; i < indexInfo->ii_NumIndexKeyAttrs; i++)
  {
   referenced.classId = OperatorClassRelationId;
   referenced.objectId = classObjectId[i];
   referenced.objectSubId = 0;

   recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
  }


  if (indexInfo->ii_Expressions)
  {
   recordDependencyOnSingleRelExpr(&myself,
           (Node *) indexInfo->ii_Expressions,
           heapRelationId,
           DEPENDENCY_NORMAL,
           DEPENDENCY_AUTO, 0);
  }


  if (indexInfo->ii_Predicate)
  {
   recordDependencyOnSingleRelExpr(&myself,
           (Node *) indexInfo->ii_Predicate,
           heapRelationId,
           DEPENDENCY_NORMAL,
           DEPENDENCY_AUTO, 0);
  }
 }
 else
 {

  Assert((flags & INDEX_CREATE_ADD_CONSTRAINT) == 0);
 }


 InvokeObjectPostCreateHookArg(RelationRelationId,
          indexRelationId, 0, is_internal);





 CommandCounterIncrement();







 if (IsBootstrapProcessingMode())
  RelationInitIndexAccessInfo(indexRelation);
 else
  Assert(indexRelation->rd_indexcxt != ((void*)0));

 indexRelation->rd_index->indnkeyatts = indexInfo->ii_NumIndexKeyAttrs;
 if (IsBootstrapProcessingMode())
 {
  index_register(heapRelationId, indexRelationId, indexInfo);
 }
 else if ((flags & INDEX_CREATE_SKIP_BUILD) != 0)
 {





  index_update_stats(heapRelation,
         1,
         -1.0);

  CommandCounterIncrement();
 }
 else
 {
  index_build(heapRelation, indexRelation, indexInfo, 0, 1);
 }





 index_close(indexRelation, NoLock);

 return indexRelationId;
}
