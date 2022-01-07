
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ confrelid; int nkeys; scalar_t__* conkey; scalar_t__* confkey; scalar_t__* conpfeqop; scalar_t__ conoid; scalar_t__ conrelid; } ;
struct TYPE_6__ {scalar_t__ confrelid; scalar_t__ condeferrable; scalar_t__ condeferred; scalar_t__ confupdtype; scalar_t__ confdeltype; scalar_t__ confmatchtype; int convalidated; int conparentid; } ;
struct TYPE_5__ {scalar_t__ tgconstrrelid; scalar_t__ tgrelid; int oid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddress ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_trigger ;
typedef TYPE_2__* Form_pg_constraint ;
typedef TYPE_3__ ForeignKeyCacheInfo ;
typedef scalar_t__ AttrNumber ;


 int Anum_pg_trigger_tgconstraint ;
 int BTEqualStrategyNumber ;
 int CONSTROID ;
 int CommandCounterIncrement () ;
 int ConstraintSetParentConstraint (scalar_t__,scalar_t__,scalar_t__) ;
 int DROP_RESTRICT ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (int ) ;
 int ReleaseSysCache (int *) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * SearchSysCache1 (int ,int ) ;
 int TriggerConstraintIndexId ;
 int TriggerRelationId ;
 int deleteDependencyRecordsFor (int ,int ,int) ;
 int elog (int ,char*,scalar_t__) ;
 int performDeletion (int *,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static bool
tryAttachPartitionForeignKey(ForeignKeyCacheInfo *fk,
        Oid partRelid,
        Oid parentConstrOid,
        int numfks,
        AttrNumber *mapped_conkey,
        AttrNumber *confkey,
        Oid *conpfeqop)
{
 HeapTuple parentConstrTup;
 Form_pg_constraint parentConstr;
 HeapTuple partcontup;
 Form_pg_constraint partConstr;
 Relation trigrel;
 ScanKeyData key;
 SysScanDesc scan;
 HeapTuple trigtup;

 parentConstrTup = SearchSysCache1(CONSTROID,
           ObjectIdGetDatum(parentConstrOid));
 if (!HeapTupleIsValid(parentConstrTup))
  elog(ERROR, "cache lookup failed for constraint %u", parentConstrOid);
 parentConstr = (Form_pg_constraint) GETSTRUCT(parentConstrTup);





 if (fk->confrelid != parentConstr->confrelid || fk->nkeys != numfks)
 {
  ReleaseSysCache(parentConstrTup);
  return 0;
 }
 for (int i = 0; i < numfks; i++)
 {
  if (fk->conkey[i] != mapped_conkey[i] ||
   fk->confkey[i] != confkey[i] ||
   fk->conpfeqop[i] != conpfeqop[i])
  {
   ReleaseSysCache(parentConstrTup);
   return 0;
  }
 }






 partcontup = SearchSysCache1(CONSTROID,
         ObjectIdGetDatum(fk->conoid));
 if (!HeapTupleIsValid(partcontup))
  elog(ERROR, "cache lookup failed for constraint %u", fk->conoid);
 partConstr = (Form_pg_constraint) GETSTRUCT(partcontup);
 if (OidIsValid(partConstr->conparentid) ||
  !partConstr->convalidated ||
  partConstr->condeferrable != parentConstr->condeferrable ||
  partConstr->condeferred != parentConstr->condeferred ||
  partConstr->confupdtype != parentConstr->confupdtype ||
  partConstr->confdeltype != parentConstr->confdeltype ||
  partConstr->confmatchtype != parentConstr->confmatchtype)
 {
  ReleaseSysCache(parentConstrTup);
  ReleaseSysCache(partcontup);
  return 0;
 }

 ReleaseSysCache(partcontup);
 ReleaseSysCache(parentConstrTup);
 trigrel = table_open(TriggerRelationId, RowExclusiveLock);
 ScanKeyInit(&key,
    Anum_pg_trigger_tgconstraint,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(fk->conoid));

 scan = systable_beginscan(trigrel, TriggerConstraintIndexId, 1,
         ((void*)0), 1, &key);
 while ((trigtup = systable_getnext(scan)) != ((void*)0))
 {
  Form_pg_trigger trgform = (Form_pg_trigger) GETSTRUCT(trigtup);
  ObjectAddress trigger;

  if (trgform->tgconstrrelid != fk->conrelid)
   continue;
  if (trgform->tgrelid != fk->confrelid)
   continue;
  deleteDependencyRecordsFor(TriggerRelationId,
           trgform->oid,
           0);

  CommandCounterIncrement();
  ObjectAddressSet(trigger, TriggerRelationId,
       trgform->oid);
  performDeletion(&trigger, DROP_RESTRICT, 0);

  CommandCounterIncrement();
 }

 systable_endscan(scan);
 table_close(trigrel, RowExclusiveLock);

 ConstraintSetParentConstraint(fk->conoid, parentConstrOid, partRelid);
 CommandCounterIncrement();
 return 1;
}
