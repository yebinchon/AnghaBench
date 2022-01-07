
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ reltype; } ;
struct TYPE_20__ {TYPE_3__* reldesc; } ;
struct TYPE_19__ {int * rd_tableam; TYPE_2__* rd_rel; int * rd_partdesc; int * rd_partkey; int * rd_rsdesc; int * trigdesc; int * rd_rules; TYPE_1__* rd_att; scalar_t__ rd_options; } ;
struct TYPE_18__ {scalar_t__ relowner; int relhasrules; int relhastriggers; scalar_t__ relkind; scalar_t__ relrowsecurity; } ;
struct TYPE_17__ {scalar_t__ tdtypeid; int tdtypmod; } ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__ RelIdCacheEnt ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef int HASH_SEQ_STATUS ;
typedef TYPE_5__* Form_pg_class ;


 int AccessMethodProcedureIndexId ;
 int AccessMethodProcedureRelationId ;
 int Assert (int) ;
 int AttributeRelationId ;
 int AttributeRelation_Rowtype_Id ;
 int AttributeRelidNumIndexId ;
 int AuthIdOidIndexId ;
 int AuthIdRelationId ;
 int AuthIdRolnameIndexId ;
 int AuthMemMemRoleIndexId ;
 int AuthMemRelationId ;
 int CLASS_TUPLE_SIZE ;
 int CacheMemoryContext ;
 int ClassOidIndexId ;
 int DatabaseNameIndexId ;
 int DatabaseOidIndexId ;
 int DatabaseRelationId ;
 int Desc_pg_attribute ;
 int Desc_pg_class ;
 int Desc_pg_proc ;
 int Desc_pg_type ;
 int ERROR ;
 int FATAL ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int IndexRelationId ;
 int IndexRelidIndexId ;
 int InitCatalogCachePhase2 () ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int MemoryContextSwitchTo (int ) ;
 int Natts_pg_attribute ;
 int Natts_pg_class ;
 int Natts_pg_proc ;
 int Natts_pg_type ;
 int ObjectIdGetDatum (int ) ;
 int OpclassOidIndexId ;
 int OperatorClassRelationId ;
 int ProcedureRelation_Rowtype_Id ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELKIND_SEQUENCE ;
 scalar_t__ RELKIND_TOASTVALUE ;
 int RELOID ;
 int RelationBuildPartitionDesc (TYPE_3__*) ;
 int RelationBuildPartitionKey (TYPE_3__*) ;
 int RelationBuildRowSecurity (TYPE_3__*) ;
 int RelationBuildRuleLock (TYPE_3__*) ;
 int RelationBuildTriggers (TYPE_3__*) ;
 int RelationDecrementReferenceCount (TYPE_3__*) ;
 int RelationGetRelationName (TYPE_3__*) ;
 int RelationGetRelid (TYPE_3__*) ;
 int RelationIdCache ;
 int RelationIncrementReferenceCount (TYPE_3__*) ;
 int RelationInitTableAccessMethod (TYPE_3__*) ;
 int RelationMapInitializePhase3 () ;
 int RelationParseRelOptions (TYPE_3__*,int ) ;
 int RelationRelationId ;
 int RelationRelation_Rowtype_Id ;
 int ReleaseSysCache (int ) ;
 int RewriteRelRulenameIndexId ;
 int RewriteRelationId ;
 int SearchSysCache1 (int ,int ) ;
 int SharedSecLabelObjectIndexId ;
 int SharedSecLabelRelationId ;
 int TriggerRelationId ;
 int TriggerRelidNameIndexId ;
 int TypeRelation_Rowtype_Id ;
 int criticalRelcachesBuilt ;
 int criticalSharedRelcachesBuilt ;
 int elog (int ,char*,int ) ;
 int formrdesc (char*,int ,int,int ,int ) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 int hash_seq_term (int *) ;
 int load_critical_index (int ,int ) ;
 int load_relcache_init_file (int) ;
 int memcpy (char*,char*,int ) ;
 int pfree (scalar_t__) ;
 int write_relcache_init_file (int) ;

void
RelationCacheInitializePhase3(void)
{
 HASH_SEQ_STATUS status;
 RelIdCacheEnt *idhentry;
 MemoryContext oldcxt;
 bool needNewCacheFile = !criticalSharedRelcachesBuilt;




 RelationMapInitializePhase3();




 oldcxt = MemoryContextSwitchTo(CacheMemoryContext);






 if (IsBootstrapProcessingMode() ||
  !load_relcache_init_file(0))
 {
  needNewCacheFile = 1;

  formrdesc("pg_class", RelationRelation_Rowtype_Id, 0,
      Natts_pg_class, Desc_pg_class);
  formrdesc("pg_attribute", AttributeRelation_Rowtype_Id, 0,
      Natts_pg_attribute, Desc_pg_attribute);
  formrdesc("pg_proc", ProcedureRelation_Rowtype_Id, 0,
      Natts_pg_proc, Desc_pg_proc);
  formrdesc("pg_type", TypeRelation_Rowtype_Id, 0,
      Natts_pg_type, Desc_pg_type);


 }

 MemoryContextSwitchTo(oldcxt);


 if (IsBootstrapProcessingMode())
  return;
 if (!criticalRelcachesBuilt)
 {
  load_critical_index(ClassOidIndexId,
       RelationRelationId);
  load_critical_index(AttributeRelidNumIndexId,
       AttributeRelationId);
  load_critical_index(IndexRelidIndexId,
       IndexRelationId);
  load_critical_index(OpclassOidIndexId,
       OperatorClassRelationId);
  load_critical_index(AccessMethodProcedureIndexId,
       AccessMethodProcedureRelationId);
  load_critical_index(RewriteRelRulenameIndexId,
       RewriteRelationId);
  load_critical_index(TriggerRelidNameIndexId,
       TriggerRelationId);



  criticalRelcachesBuilt = 1;
 }
 if (!criticalSharedRelcachesBuilt)
 {
  load_critical_index(DatabaseNameIndexId,
       DatabaseRelationId);
  load_critical_index(DatabaseOidIndexId,
       DatabaseRelationId);
  load_critical_index(AuthIdRolnameIndexId,
       AuthIdRelationId);
  load_critical_index(AuthIdOidIndexId,
       AuthIdRelationId);
  load_critical_index(AuthMemMemRoleIndexId,
       AuthMemRelationId);
  load_critical_index(SharedSecLabelObjectIndexId,
       SharedSecLabelRelationId);



  criticalSharedRelcachesBuilt = 1;
 }
 hash_seq_init(&status, RelationIdCache);

 while ((idhentry = (RelIdCacheEnt *) hash_seq_search(&status)) != ((void*)0))
 {
  Relation relation = idhentry->reldesc;
  bool restart = 0;




  RelationIncrementReferenceCount(relation);




  if (relation->rd_rel->relowner == InvalidOid)
  {
   HeapTuple htup;
   Form_pg_class relp;

   htup = SearchSysCache1(RELOID,
           ObjectIdGetDatum(RelationGetRelid(relation)));
   if (!HeapTupleIsValid(htup))
    elog(FATAL, "cache lookup failed for relation %u",
      RelationGetRelid(relation));
   relp = (Form_pg_class) GETSTRUCT(htup);





   memcpy((char *) relation->rd_rel, (char *) relp, CLASS_TUPLE_SIZE);


   if (relation->rd_options)
    pfree(relation->rd_options);
   RelationParseRelOptions(relation, htup);







   Assert(relation->rd_att->tdtypeid == relp->reltype);
   Assert(relation->rd_att->tdtypmod == -1);

   ReleaseSysCache(htup);


   if (relation->rd_rel->relowner == InvalidOid)
    elog(ERROR, "invalid relowner in pg_class entry for \"%s\"",
      RelationGetRelationName(relation));

   restart = 1;
  }
  if (relation->rd_rel->relhasrules && relation->rd_rules == ((void*)0))
  {
   RelationBuildRuleLock(relation);
   if (relation->rd_rules == ((void*)0))
    relation->rd_rel->relhasrules = 0;
   restart = 1;
  }
  if (relation->rd_rel->relhastriggers && relation->trigdesc == ((void*)0))
  {
   RelationBuildTriggers(relation);
   if (relation->trigdesc == ((void*)0))
    relation->rd_rel->relhastriggers = 0;
   restart = 1;
  }
  if (relation->rd_rel->relrowsecurity && relation->rd_rsdesc == ((void*)0))
  {
   RelationBuildRowSecurity(relation);

   Assert(relation->rd_rsdesc != ((void*)0));
   restart = 1;
  }




  if (relation->rd_rel->relkind == RELKIND_PARTITIONED_TABLE &&
   relation->rd_partkey == ((void*)0))
  {
   RelationBuildPartitionKey(relation);
   Assert(relation->rd_partkey != ((void*)0));

   restart = 1;
  }

  if (relation->rd_rel->relkind == RELKIND_PARTITIONED_TABLE &&
   relation->rd_partdesc == ((void*)0))
  {
   RelationBuildPartitionDesc(relation);
   Assert(relation->rd_partdesc != ((void*)0));

   restart = 1;
  }

  if (relation->rd_tableam == ((void*)0) &&
   (relation->rd_rel->relkind == RELKIND_RELATION ||
    relation->rd_rel->relkind == RELKIND_SEQUENCE ||
    relation->rd_rel->relkind == RELKIND_TOASTVALUE ||
    relation->rd_rel->relkind == RELKIND_MATVIEW))
  {
   RelationInitTableAccessMethod(relation);
   Assert(relation->rd_tableam != ((void*)0));

   restart = 1;
  }


  RelationDecrementReferenceCount(relation);


  if (restart)
  {
   hash_seq_term(&status);
   hash_seq_init(&status, RelationIdCache);
  }
 }





 if (needNewCacheFile)
 {






  InitCatalogCachePhase2();


  write_relcache_init_file(1);
  write_relcache_init_file(0);
 }
}
