
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;
typedef struct TYPE_40__ TYPE_14__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_45__ {scalar_t__ attisdropped; int attname; } ;
struct TYPE_44__ {TYPE_14__* bound; int name; } ;
struct TYPE_43__ {int trigdesc; int rd_islocaltemp; TYPE_1__* rd_rel; } ;
struct TYPE_42__ {int natts; } ;
struct TYPE_41__ {scalar_t__ relkind; scalar_t__ relpersistence; int reloftype; scalar_t__ relispartition; } ;
struct TYPE_40__ {int is_default; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__ PartitionCmd ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef TYPE_5__* Form_pg_attribute ;
typedef int AttrNumber ;


 int ATSimplePermissions (TYPE_3__*,int) ;
 int ATTNAME ;
 int ATT_FOREIGN_TABLE ;
 int ATT_TABLE ;
 int AccessExclusiveLock ;
 int AccessShareLock ;
 int Anum_pg_inherits_inhparent ;
 int Anum_pg_inherits_inhrelid ;
 int Assert (int) ;
 int AttachPartitionEnsureIndexes (TYPE_3__*,TYPE_3__*) ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char*) ;
 int CloneForeignKeyConstraints (int **,TYPE_3__*,TYPE_3__*) ;
 int CloneRowTriggersToPartition (TYPE_3__*,TYPE_3__*) ;
 int CreateInheritance (TYPE_3__*,TYPE_3__*) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_DUPLICATE_TABLE ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int F_OIDEQ ;
 char* FindTriggerIncompatibleWithInheritance (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InheritsParentIndexId ;
 int InheritsRelationId ;
 int InheritsRelidSeqnoIndexId ;
 int LockRelationOid (int ,int ) ;
 char* NameStr (int ) ;
 int NoLock ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int QueuePartitionConstraintValidation (int **,TYPE_3__*,int *,int) ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELPERSISTENCE_TEMP ;
 TYPE_2__* RelationGetDescr (TYPE_3__*) ;
 int RelationGetPartitionDesc (TYPE_3__*) ;
 int RelationGetPartitionQual (TYPE_3__*) ;
 int RelationGetRelationName (TYPE_3__*) ;
 int RelationGetRelid (TYPE_3__*) ;
 int RelationRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SearchSysCacheExists2 (int ,int ,int ) ;
 int StorePartitionBound (TYPE_3__*,TYPE_3__*,TYPE_14__*) ;
 TYPE_5__* TupleDescAttr (TYPE_2__*,int) ;
 int check_new_partition_bound (int ,TYPE_3__*,TYPE_14__*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*,...) ;
 scalar_t__ eval_const_expressions (int *,int *) ;
 int * find_all_inheritors (int ,int ,int *) ;
 int get_default_oid_from_partdesc (int ) ;
 int * get_proposed_default_constraint (int *) ;
 int * get_qual_from_partbound (TYPE_3__*,TYPE_3__*,TYPE_14__*) ;
 int * list_concat (int *,int ) ;
 int * list_make1 (int ) ;
 scalar_t__ list_member_oid (int *,int ) ;
 int make_ands_explicit (int *) ;
 int * map_partition_varattnos (int *,int,TYPE_3__*,TYPE_3__*,int*) ;
 int systable_beginscan (TYPE_3__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_3__*,int ) ;
 TYPE_3__* table_open (int ,int ) ;
 TYPE_3__* table_openrv (int ,int ) ;

__attribute__((used)) static ObjectAddress
ATExecAttachPartition(List **wqueue, Relation rel, PartitionCmd *cmd)
{
 Relation attachrel,
    catalog;
 List *attachrel_children;
 List *partConstraint;
 SysScanDesc scan;
 ScanKeyData skey;
 AttrNumber attno;
 int natts;
 TupleDesc tupleDesc;
 ObjectAddress address;
 const char *trigger_name;
 bool found_whole_row;
 Oid defaultPartOid;
 List *partBoundConstraint;





 defaultPartOid =
  get_default_oid_from_partdesc(RelationGetPartitionDesc(rel));
 if (OidIsValid(defaultPartOid))
  LockRelationOid(defaultPartOid, AccessExclusiveLock);

 attachrel = table_openrv(cmd->name, AccessExclusiveLock);
 ATSimplePermissions(attachrel, ATT_TABLE | ATT_FOREIGN_TABLE);


 if (attachrel->rd_rel->relispartition)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is already a partition",
      RelationGetRelationName(attachrel))));

 if (OidIsValid(attachrel->rd_rel->reloftype))
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot attach a typed table as partition")));





 catalog = table_open(InheritsRelationId, AccessShareLock);
 ScanKeyInit(&skey,
    Anum_pg_inherits_inhrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(attachrel)));
 scan = systable_beginscan(catalog, InheritsRelidSeqnoIndexId, 1,
         ((void*)0), 1, &skey);
 if (HeapTupleIsValid(systable_getnext(scan)))
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot attach inheritance child as partition")));
 systable_endscan(scan);


 ScanKeyInit(&skey,
    Anum_pg_inherits_inhparent,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(attachrel)));
 scan = systable_beginscan(catalog, InheritsParentIndexId, 1, ((void*)0),
         1, &skey);
 if (HeapTupleIsValid(systable_getnext(scan)) &&
  attachrel->rd_rel->relkind == RELKIND_RELATION)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot attach inheritance parent as partition")));
 systable_endscan(scan);
 table_close(catalog, AccessShareLock);
 attachrel_children = find_all_inheritors(RelationGetRelid(attachrel),
            AccessExclusiveLock, ((void*)0));
 if (list_member_oid(attachrel_children, RelationGetRelid(rel)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_TABLE),
     errmsg("circular inheritance not allowed"),
     errdetail("\"%s\" is already a child of \"%s\".",
         RelationGetRelationName(rel),
         RelationGetRelationName(attachrel))));


 if (rel->rd_rel->relpersistence != RELPERSISTENCE_TEMP &&
  attachrel->rd_rel->relpersistence == RELPERSISTENCE_TEMP)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot attach a temporary relation as partition of permanent relation \"%s\"",
      RelationGetRelationName(rel))));


 if (rel->rd_rel->relpersistence == RELPERSISTENCE_TEMP &&
  attachrel->rd_rel->relpersistence != RELPERSISTENCE_TEMP)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot attach a permanent relation as partition of temporary relation \"%s\"",
      RelationGetRelationName(rel))));


 if (rel->rd_rel->relpersistence == RELPERSISTENCE_TEMP &&
  !rel->rd_islocaltemp)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot attach as partition of temporary relation of another session")));


 if (attachrel->rd_rel->relpersistence == RELPERSISTENCE_TEMP &&
  !attachrel->rd_islocaltemp)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot attach temporary relation of another session as partition")));


 tupleDesc = RelationGetDescr(attachrel);
 natts = tupleDesc->natts;
 for (attno = 1; attno <= natts; attno++)
 {
  Form_pg_attribute attribute = TupleDescAttr(tupleDesc, attno - 1);
  char *attributeName = NameStr(attribute->attname);


  if (attribute->attisdropped)
   continue;


  if (!SearchSysCacheExists2(ATTNAME,
           ObjectIdGetDatum(RelationGetRelid(rel)),
           CStringGetDatum(attributeName)))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("table \"%s\" contains column \"%s\" not found in parent \"%s\"",
       RelationGetRelationName(attachrel), attributeName,
       RelationGetRelationName(rel)),
      errdetail("The new partition may contain only the columns present in parent.")));
 }






 trigger_name = FindTriggerIncompatibleWithInheritance(attachrel->trigdesc);
 if (trigger_name != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("trigger \"%s\" prevents table \"%s\" from becoming a partition",
      trigger_name, RelationGetRelationName(attachrel)),
     errdetail("ROW triggers with transition tables are not supported on partitions")));






 check_new_partition_bound(RelationGetRelationName(attachrel), rel,
         cmd->bound);


 CreateInheritance(attachrel, rel);


 StorePartitionBound(attachrel, rel, cmd->bound);


 AttachPartitionEnsureIndexes(rel, attachrel);


 CloneRowTriggersToPartition(rel, attachrel);





 CloneForeignKeyConstraints(wqueue, rel, attachrel);






 partBoundConstraint = get_qual_from_partbound(attachrel, rel, cmd->bound);
 partConstraint = list_concat(partBoundConstraint,
         RelationGetPartitionQual(rel));


 if (partConstraint)
 {





  partConstraint =
   (List *) eval_const_expressions(((void*)0),
           (Node *) partConstraint);


  partConstraint = list_make1(make_ands_explicit(partConstraint));





  partConstraint = map_partition_varattnos(partConstraint, 1, attachrel,
             rel, &found_whole_row);

  if (found_whole_row)
   elog(ERROR,
     "unexpected whole-row reference found in partition key");


  QueuePartitionConstraintValidation(wqueue, attachrel, partConstraint,
             0);
 }
 if (OidIsValid(defaultPartOid))
 {
  Relation defaultrel;
  List *defPartConstraint;

  Assert(!cmd->bound->is_default);


  defaultrel = table_open(defaultPartOid, NoLock);
  defPartConstraint =
   get_proposed_default_constraint(partBoundConstraint);





  defPartConstraint =
   map_partition_varattnos(defPartConstraint,
         1, defaultrel, rel, ((void*)0));
  QueuePartitionConstraintValidation(wqueue, defaultrel,
             defPartConstraint, 1);


  table_close(defaultrel, NoLock);
 }

 ObjectAddressSet(address, RelationRelationId, RelationGetRelid(attachrel));


 table_close(attachrel, NoLock);

 return address;
}
