
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_11__ {int amprocnum; int amproc; } ;
struct TYPE_10__ {scalar_t__ opcfamily; scalar_t__ opcintype; } ;
struct TYPE_9__ {int keysize; int entrysize; } ;
struct TYPE_8__ {int valid; scalar_t__ numSupport; scalar_t__ opcfamily; scalar_t__ opcintype; int * supportProcs; } ;
typedef int SysScanDesc ;
typedef scalar_t__ StrategyNumber ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int RegProcedure ;
typedef TYPE_1__ OpClassCacheEnt ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_2__ HASHCTL ;
typedef TYPE_3__* Form_pg_opclass ;
typedef TYPE_4__* Form_pg_amproc ;


 int AccessMethodProcedureIndexId ;
 int AccessMethodProcedureRelationId ;
 int AccessShareLock ;
 int Anum_pg_amproc_amprocfamily ;
 int Anum_pg_amproc_amproclefttype ;
 int Anum_pg_amproc_amprocrighttype ;
 int Anum_pg_opclass_oid ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int CacheMemoryContext ;
 int CreateCacheMemoryContext () ;
 int ERROR ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 scalar_t__ HeapTupleIsValid (int ) ;
 scalar_t__ INT2_BTREE_OPS_OID ;
 int MemSet (TYPE_2__*,int ,int) ;
 scalar_t__ MemoryContextAllocZero (int ,scalar_t__) ;
 scalar_t__ OID_BTREE_OPS_OID ;
 int ObjectIdGetDatum (scalar_t__) ;
 int * OpClassCache ;
 int OpclassOidIndexId ;
 int OperatorClassRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 scalar_t__ criticalRelcachesBuilt ;
 int elog (int ,char*,int,...) ;
 int * hash_create (char*,int,TYPE_2__*,int) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static OpClassCacheEnt *
LookupOpclassInfo(Oid operatorClassOid,
      StrategyNumber numSupport)
{
 OpClassCacheEnt *opcentry;
 bool found;
 Relation rel;
 SysScanDesc scan;
 ScanKeyData skey[3];
 HeapTuple htup;
 bool indexOK;

 if (OpClassCache == ((void*)0))
 {

  HASHCTL ctl;

  MemSet(&ctl, 0, sizeof(ctl));
  ctl.keysize = sizeof(Oid);
  ctl.entrysize = sizeof(OpClassCacheEnt);
  OpClassCache = hash_create("Operator class cache", 64,
           &ctl, HASH_ELEM | HASH_BLOBS);


  if (!CacheMemoryContext)
   CreateCacheMemoryContext();
 }

 opcentry = (OpClassCacheEnt *) hash_search(OpClassCache,
              (void *) &operatorClassOid,
              HASH_ENTER, &found);

 if (!found)
 {

  opcentry->valid = 0;
  opcentry->numSupport = numSupport;

  if (numSupport > 0)
   opcentry->supportProcs = (RegProcedure *)
    MemoryContextAllocZero(CacheMemoryContext,
            numSupport * sizeof(RegProcedure));
  else
   opcentry->supportProcs = ((void*)0);
 }
 else
 {
  Assert(numSupport == opcentry->numSupport);
 }
 if (opcentry->valid)
  return opcentry;
 indexOK = criticalRelcachesBuilt ||
  (operatorClassOid != OID_BTREE_OPS_OID &&
   operatorClassOid != INT2_BTREE_OPS_OID);







 ScanKeyInit(&skey[0],
    Anum_pg_opclass_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(operatorClassOid));
 rel = table_open(OperatorClassRelationId, AccessShareLock);
 scan = systable_beginscan(rel, OpclassOidIndexId, indexOK,
         ((void*)0), 1, skey);

 if (HeapTupleIsValid(htup = systable_getnext(scan)))
 {
  Form_pg_opclass opclassform = (Form_pg_opclass) GETSTRUCT(htup);

  opcentry->opcfamily = opclassform->opcfamily;
  opcentry->opcintype = opclassform->opcintype;
 }
 else
  elog(ERROR, "could not find tuple for opclass %u", operatorClassOid);

 systable_endscan(scan);
 table_close(rel, AccessShareLock);





 if (numSupport > 0)
 {
  ScanKeyInit(&skey[0],
     Anum_pg_amproc_amprocfamily,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(opcentry->opcfamily));
  ScanKeyInit(&skey[1],
     Anum_pg_amproc_amproclefttype,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(opcentry->opcintype));
  ScanKeyInit(&skey[2],
     Anum_pg_amproc_amprocrighttype,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(opcentry->opcintype));
  rel = table_open(AccessMethodProcedureRelationId, AccessShareLock);
  scan = systable_beginscan(rel, AccessMethodProcedureIndexId, indexOK,
          ((void*)0), 3, skey);

  while (HeapTupleIsValid(htup = systable_getnext(scan)))
  {
   Form_pg_amproc amprocform = (Form_pg_amproc) GETSTRUCT(htup);

   if (amprocform->amprocnum <= 0 ||
    (StrategyNumber) amprocform->amprocnum > numSupport)
    elog(ERROR, "invalid amproc number %d for opclass %u",
      amprocform->amprocnum, operatorClassOid);

   opcentry->supportProcs[amprocform->amprocnum - 1] =
    amprocform->amproc;
  }

  systable_endscan(scan);
  table_close(rel, AccessShareLock);
 }

 opcentry->valid = 1;
 return opcentry;
}
