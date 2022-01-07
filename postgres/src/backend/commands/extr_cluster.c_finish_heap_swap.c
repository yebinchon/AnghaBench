
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int mapped_tables ;
typedef int TransactionId ;
struct TYPE_20__ {int relminmxid; int relfrozenxid; } ;
struct TYPE_19__ {int t_self; } ;
struct TYPE_18__ {scalar_t__ objectSubId; scalar_t__ objectId; scalar_t__ classId; } ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {scalar_t__ reltoastrelid; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ ObjectAddress ;
typedef int MultiXactId ;
typedef TYPE_4__* HeapTuple ;
typedef TYPE_5__* Form_pg_class ;


 int AccessShareLock ;
 int CacheInvalidateCatalog (scalar_t__) ;
 int CatalogTupleUpdate (TYPE_2__*,int *,TYPE_4__*) ;
 int DROP_RESTRICT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_4__*) ;
 int HeapTupleIsValid (TYPE_4__*) ;
 int NAMEDATALEN ;
 int NoLock ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int PERFORM_DELETION_INTERNAL ;
 int PROGRESS_CLUSTER_PHASE ;
 int PROGRESS_CLUSTER_PHASE_FINAL_CLEANUP ;
 int PROGRESS_CLUSTER_PHASE_REBUILD_INDEX ;
 int PROGRESS_CLUSTER_PHASE_SWAP_REL_FILES ;
 int REINDEX_REL_CHECK_CONSTRAINTS ;
 int REINDEX_REL_FORCE_INDEXES_PERMANENT ;
 int REINDEX_REL_FORCE_INDEXES_UNLOGGED ;
 int REINDEX_REL_SUPPRESS_INDEX_USE ;
 int RELOID ;
 char RELPERSISTENCE_PERMANENT ;
 char RELPERSISTENCE_UNLOGGED ;
 int RelationClearMissing (TYPE_2__*) ;
 int RelationMapRemoveMapping (scalar_t__) ;
 scalar_t__ RelationRelationId ;
 int RenameRelationInternal (scalar_t__,char*,int,int) ;
 int RowExclusiveLock ;
 TYPE_4__* SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 int memset (scalar_t__*,int ,int) ;
 int performDeletion (TYPE_3__*,int ,int ) ;
 int pgstat_progress_update_param (int ,int ) ;
 int reindex_relation (scalar_t__,int,int ) ;
 int relation_close (TYPE_2__*,int ) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int swap_relation_files (scalar_t__,scalar_t__,int,int,int,int ,int ,scalar_t__*) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (scalar_t__,int ) ;
 scalar_t__ toast_get_valid_index (scalar_t__,int ) ;

void
finish_heap_swap(Oid OIDOldHeap, Oid OIDNewHeap,
     bool is_system_catalog,
     bool swap_toast_by_content,
     bool check_constraints,
     bool is_internal,
     TransactionId frozenXid,
     MultiXactId cutoffMulti,
     char newrelpersistence)
{
 ObjectAddress object;
 Oid mapped_tables[4];
 int reindex_flags;
 int i;


 pgstat_progress_update_param(PROGRESS_CLUSTER_PHASE,
         PROGRESS_CLUSTER_PHASE_SWAP_REL_FILES);


 memset(mapped_tables, 0, sizeof(mapped_tables));





 swap_relation_files(OIDOldHeap, OIDNewHeap,
      (OIDOldHeap == RelationRelationId),
      swap_toast_by_content, is_internal,
      frozenXid, cutoffMulti, mapped_tables);





 if (is_system_catalog)
  CacheInvalidateCatalog(OIDOldHeap);
 reindex_flags = REINDEX_REL_SUPPRESS_INDEX_USE;
 if (check_constraints)
  reindex_flags |= REINDEX_REL_CHECK_CONSTRAINTS;





 if (newrelpersistence == RELPERSISTENCE_UNLOGGED)
  reindex_flags |= REINDEX_REL_FORCE_INDEXES_UNLOGGED;
 else if (newrelpersistence == RELPERSISTENCE_PERMANENT)
  reindex_flags |= REINDEX_REL_FORCE_INDEXES_PERMANENT;


 pgstat_progress_update_param(PROGRESS_CLUSTER_PHASE,
         PROGRESS_CLUSTER_PHASE_REBUILD_INDEX);

 reindex_relation(OIDOldHeap, reindex_flags, 0);


 pgstat_progress_update_param(PROGRESS_CLUSTER_PHASE,
         PROGRESS_CLUSTER_PHASE_FINAL_CLEANUP);
 if (OIDOldHeap == RelationRelationId)
 {
  Relation relRelation;
  HeapTuple reltup;
  Form_pg_class relform;

  relRelation = table_open(RelationRelationId, RowExclusiveLock);

  reltup = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(OIDOldHeap));
  if (!HeapTupleIsValid(reltup))
   elog(ERROR, "cache lookup failed for relation %u", OIDOldHeap);
  relform = (Form_pg_class) GETSTRUCT(reltup);

  relform->relfrozenxid = frozenXid;
  relform->relminmxid = cutoffMulti;

  CatalogTupleUpdate(relRelation, &reltup->t_self, reltup);

  table_close(relRelation, RowExclusiveLock);
 }


 object.classId = RelationRelationId;
 object.objectId = OIDNewHeap;
 object.objectSubId = 0;





 performDeletion(&object, DROP_RESTRICT, PERFORM_DELETION_INTERNAL);
 for (i = 0; OidIsValid(mapped_tables[i]); i++)
  RelationMapRemoveMapping(mapped_tables[i]);
 if (!swap_toast_by_content)
 {
  Relation newrel;

  newrel = table_open(OIDOldHeap, NoLock);
  if (OidIsValid(newrel->rd_rel->reltoastrelid))
  {
   Oid toastidx;
   char NewToastName[NAMEDATALEN];


   toastidx = toast_get_valid_index(newrel->rd_rel->reltoastrelid,
            AccessShareLock);


   snprintf(NewToastName, NAMEDATALEN, "pg_toast_%u",
      OIDOldHeap);
   RenameRelationInternal(newrel->rd_rel->reltoastrelid,
           NewToastName, 1, 0);


   snprintf(NewToastName, NAMEDATALEN, "pg_toast_%u_index",
      OIDOldHeap);

   RenameRelationInternal(toastidx,
           NewToastName, 1, 1);
  }
  relation_close(newrel, NoLock);
 }


 if (!is_system_catalog)
 {
  Relation newrel;

  newrel = table_open(OIDOldHeap, NoLock);
  RelationClearMissing(newrel);
  relation_close(newrel, NoLock);
 }
}
