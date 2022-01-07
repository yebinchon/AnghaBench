
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int tgname; int oid; } ;
struct TYPE_12__ {int t_self; } ;
struct TYPE_11__ {int subname; int newname; int relation; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_1__ RenameStmt ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_trigger ;


 int AccessExclusiveLock ;
 int Anum_pg_trigger_tgname ;
 int Anum_pg_trigger_tgrelid ;
 int BTEqualStrategyNumber ;
 int CacheInvalidateRelcache (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int NoLock ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int ) ;
 int RangeVarCallbackForRenameTrigger ;
 int RangeVarGetRelidExtended (int ,int ,int ,int ,int *) ;
 int RelationGetRelationName (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TriggerRelationId ;
 int TriggerRelidNameIndexId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 TYPE_2__* heap_copytuple (TYPE_2__*) ;
 int namestrcpy (int *,int ) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
renametrig(RenameStmt *stmt)
{
 Oid tgoid;
 Relation targetrel;
 Relation tgrel;
 HeapTuple tuple;
 SysScanDesc tgscan;
 ScanKeyData key[2];
 Oid relid;
 ObjectAddress address;





 relid = RangeVarGetRelidExtended(stmt->relation, AccessExclusiveLock,
          0,
          RangeVarCallbackForRenameTrigger,
          ((void*)0));


 targetrel = relation_open(relid, NoLock);
 tgrel = table_open(TriggerRelationId, RowExclusiveLock);




 ScanKeyInit(&key[0],
    Anum_pg_trigger_tgrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));
 ScanKeyInit(&key[1],
    Anum_pg_trigger_tgname,
    BTEqualStrategyNumber, F_NAMEEQ,
    PointerGetDatum(stmt->newname));
 tgscan = systable_beginscan(tgrel, TriggerRelidNameIndexId, 1,
        ((void*)0), 2, key);
 if (HeapTupleIsValid(tuple = systable_getnext(tgscan)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("trigger \"%s\" for relation \"%s\" already exists",
      stmt->newname, RelationGetRelationName(targetrel))));
 systable_endscan(tgscan);




 ScanKeyInit(&key[0],
    Anum_pg_trigger_tgrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));
 ScanKeyInit(&key[1],
    Anum_pg_trigger_tgname,
    BTEqualStrategyNumber, F_NAMEEQ,
    PointerGetDatum(stmt->subname));
 tgscan = systable_beginscan(tgrel, TriggerRelidNameIndexId, 1,
        ((void*)0), 2, key);
 if (HeapTupleIsValid(tuple = systable_getnext(tgscan)))
 {
  Form_pg_trigger trigform;




  tuple = heap_copytuple(tuple);
  trigform = (Form_pg_trigger) GETSTRUCT(tuple);
  tgoid = trigform->oid;

  namestrcpy(&trigform->tgname,
       stmt->newname);

  CatalogTupleUpdate(tgrel, &tuple->t_self, tuple);

  InvokeObjectPostAlterHook(TriggerRelationId,
          tgoid, 0);






  CacheInvalidateRelcache(targetrel);
 }
 else
 {
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("trigger \"%s\" for table \"%s\" does not exist",
      stmt->subname, RelationGetRelationName(targetrel))));
 }

 ObjectAddressSet(address, TriggerRelationId, tgoid);

 systable_endscan(tgscan);

 table_close(tgrel, RowExclusiveLock);




 relation_close(targetrel, NoLock);

 return address;
}
