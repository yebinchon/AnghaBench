
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_28__ {char tgenabled; int oid; int tgname; int tgtype; scalar_t__ tgisinternal; } ;
struct TYPE_27__ {int t_self; } ;
struct TYPE_26__ {int nparts; int * oids; } ;
struct TYPE_25__ {TYPE_1__* rd_rel; } ;
struct TYPE_24__ {scalar_t__ relkind; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* PartitionDesc ;
typedef int LOCKMODE ;
typedef TYPE_4__* HeapTuple ;
typedef TYPE_5__* Form_pg_trigger ;


 int Anum_pg_trigger_tgname ;
 int Anum_pg_trigger_tgrelid ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int CacheInvalidateRelcache (TYPE_2__*) ;
 int CatalogTupleUpdate (TYPE_2__*,int *,TYPE_4__*) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 int GETSTRUCT (TYPE_4__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_4__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 char* NameStr (int ) ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 TYPE_3__* RelationGetPartitionDesc (TYPE_2__*) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 scalar_t__ TRIGGER_FOR_ROW (int ) ;
 int TriggerRelationId ;
 int TriggerRelidNameIndexId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 TYPE_4__* heap_copytuple (TYPE_4__*) ;
 int heap_freetuple (TYPE_4__*) ;
 TYPE_2__* relation_open (int ,int ) ;
 int superuser () ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_4__* systable_getnext (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

void
EnableDisableTrigger(Relation rel, const char *tgname,
      char fires_when, bool skip_system, LOCKMODE lockmode)
{
 Relation tgrel;
 int nkeys;
 ScanKeyData keys[2];
 SysScanDesc tgscan;
 HeapTuple tuple;
 bool found;
 bool changed;


 tgrel = table_open(TriggerRelationId, RowExclusiveLock);

 ScanKeyInit(&keys[0],
    Anum_pg_trigger_tgrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(rel)));
 if (tgname)
 {
  ScanKeyInit(&keys[1],
     Anum_pg_trigger_tgname,
     BTEqualStrategyNumber, F_NAMEEQ,
     CStringGetDatum(tgname));
  nkeys = 2;
 }
 else
  nkeys = 1;

 tgscan = systable_beginscan(tgrel, TriggerRelidNameIndexId, 1,
        ((void*)0), nkeys, keys);

 found = changed = 0;

 while (HeapTupleIsValid(tuple = systable_getnext(tgscan)))
 {
  Form_pg_trigger oldtrig = (Form_pg_trigger) GETSTRUCT(tuple);

  if (oldtrig->tgisinternal)
  {

   if (skip_system)
    continue;
   if (!superuser())
    ereport(ERROR,
      (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
       errmsg("permission denied: \"%s\" is a system trigger",
        NameStr(oldtrig->tgname))));
  }

  found = 1;

  if (oldtrig->tgenabled != fires_when)
  {

   HeapTuple newtup = heap_copytuple(tuple);
   Form_pg_trigger newtrig = (Form_pg_trigger) GETSTRUCT(newtup);

   newtrig->tgenabled = fires_when;

   CatalogTupleUpdate(tgrel, &newtup->t_self, newtup);

   heap_freetuple(newtup);





   if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE &&
    (TRIGGER_FOR_ROW(oldtrig->tgtype)))
   {
    PartitionDesc partdesc = RelationGetPartitionDesc(rel);
    int i;

    for (i = 0; i < partdesc->nparts; i++)
    {
     Relation part;

     part = relation_open(partdesc->oids[i], lockmode);
     EnableDisableTrigger(part, NameStr(oldtrig->tgname),
           fires_when, skip_system, lockmode);
     table_close(part, NoLock);
    }
   }

   changed = 1;
  }

  InvokeObjectPostAlterHook(TriggerRelationId,
          oldtrig->oid, 0);
 }

 systable_endscan(tgscan);

 table_close(tgrel, RowExclusiveLock);

 if (tgname && !found)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("trigger \"%s\" for table \"%s\" does not exist",
      tgname, RelationGetRelationName(rel))));






 if (changed)
  CacheInvalidateRelcache(rel);
}
