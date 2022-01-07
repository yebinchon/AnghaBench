
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int int16 ;
typedef int bytea ;
struct TYPE_19__ {int numtriggers; TYPE_3__* triggers; } ;
typedef TYPE_2__ TriggerDesc ;
struct TYPE_20__ {int tgnargs; int tgnattr; char** tgargs; int * tgqual; int * tgnewtable; int * tgoldtable; int * tgattr; int tginitdeferred; int tgdeferrable; int tgconstraint; int tgconstrindid; int tgconstrrelid; int tgisinternal; int tgenabled; int tgtype; int tgfoid; void* tgname; int tgoid; } ;
typedef TYPE_3__ Trigger ;
struct TYPE_18__ {int dim1; int values; } ;
struct TYPE_22__ {int tgnargs; TYPE_1__ tgattr; int tginitdeferred; int tgdeferrable; int tgconstraint; int tgconstrindid; int tgconstrrelid; int tgisinternal; int tgenabled; int tgtype; int tgfoid; int tgname; int oid; } ;
struct TYPE_21__ {int trigdesc; int rd_att; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_4__* Relation ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef TYPE_5__* Form_pg_trigger ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_trigger_tgargs ;
 int Anum_pg_trigger_tgnewtable ;
 int Anum_pg_trigger_tgoldtable ;
 int Anum_pg_trigger_tgqual ;
 int Anum_pg_trigger_tgrelid ;
 int BTEqualStrategyNumber ;
 int CacheMemoryContext ;
 int CopyTriggerDesc (TYPE_2__*) ;
 int * DatumGetByteaPP (int ) ;
 void* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int F_OIDEQ ;
 int FreeTriggerDesc (TYPE_2__*) ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int NameGetDatum (int *) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetRelationName (TYPE_4__*) ;
 int RelationGetRelid (TYPE_4__*) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SetTriggerFlags (TYPE_2__*,TYPE_3__*) ;
 int * TextDatumGetCString (int ) ;
 int TriggerRelationId ;
 int TriggerRelidNameIndexId ;
 scalar_t__ VARDATA_ANY (int *) ;
 int elog (int ,char*,int ) ;
 int fastgetattr (int ,int ,int ,int*) ;
 int memcpy (int *,int *,int) ;
 int nameout ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;
 int pfree (TYPE_3__*) ;
 char* pstrdup (char*) ;
 scalar_t__ repalloc (TYPE_3__*,int) ;
 scalar_t__ strlen (char*) ;
 int systable_beginscan (TYPE_4__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_4__*,int ) ;
 TYPE_4__* table_open (int ,int ) ;

void
RelationBuildTriggers(Relation relation)
{
 TriggerDesc *trigdesc;
 int numtrigs;
 int maxtrigs;
 Trigger *triggers;
 Relation tgrel;
 ScanKeyData skey;
 SysScanDesc tgscan;
 HeapTuple htup;
 MemoryContext oldContext;
 int i;





 maxtrigs = 16;
 triggers = (Trigger *) palloc(maxtrigs * sizeof(Trigger));
 numtrigs = 0;







 ScanKeyInit(&skey,
    Anum_pg_trigger_tgrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(relation)));

 tgrel = table_open(TriggerRelationId, AccessShareLock);
 tgscan = systable_beginscan(tgrel, TriggerRelidNameIndexId, 1,
        ((void*)0), 1, &skey);

 while (HeapTupleIsValid(htup = systable_getnext(tgscan)))
 {
  Form_pg_trigger pg_trigger = (Form_pg_trigger) GETSTRUCT(htup);
  Trigger *build;
  Datum datum;
  bool isnull;

  if (numtrigs >= maxtrigs)
  {
   maxtrigs *= 2;
   triggers = (Trigger *) repalloc(triggers, maxtrigs * sizeof(Trigger));
  }
  build = &(triggers[numtrigs]);

  build->tgoid = pg_trigger->oid;
  build->tgname = DatumGetCString(DirectFunctionCall1(nameout,
               NameGetDatum(&pg_trigger->tgname)));
  build->tgfoid = pg_trigger->tgfoid;
  build->tgtype = pg_trigger->tgtype;
  build->tgenabled = pg_trigger->tgenabled;
  build->tgisinternal = pg_trigger->tgisinternal;
  build->tgconstrrelid = pg_trigger->tgconstrrelid;
  build->tgconstrindid = pg_trigger->tgconstrindid;
  build->tgconstraint = pg_trigger->tgconstraint;
  build->tgdeferrable = pg_trigger->tgdeferrable;
  build->tginitdeferred = pg_trigger->tginitdeferred;
  build->tgnargs = pg_trigger->tgnargs;

  build->tgnattr = pg_trigger->tgattr.dim1;
  if (build->tgnattr > 0)
  {
   build->tgattr = (int16 *) palloc(build->tgnattr * sizeof(int16));
   memcpy(build->tgattr, &(pg_trigger->tgattr.values),
       build->tgnattr * sizeof(int16));
  }
  else
   build->tgattr = ((void*)0);
  if (build->tgnargs > 0)
  {
   bytea *val;
   char *p;

   val = DatumGetByteaPP(fastgetattr(htup,
             Anum_pg_trigger_tgargs,
             tgrel->rd_att, &isnull));
   if (isnull)
    elog(ERROR, "tgargs is null in trigger for relation \"%s\"",
      RelationGetRelationName(relation));
   p = (char *) VARDATA_ANY(val);
   build->tgargs = (char **) palloc(build->tgnargs * sizeof(char *));
   for (i = 0; i < build->tgnargs; i++)
   {
    build->tgargs[i] = pstrdup(p);
    p += strlen(p) + 1;
   }
  }
  else
   build->tgargs = ((void*)0);

  datum = fastgetattr(htup, Anum_pg_trigger_tgoldtable,
       tgrel->rd_att, &isnull);
  if (!isnull)
   build->tgoldtable =
    DatumGetCString(DirectFunctionCall1(nameout, datum));
  else
   build->tgoldtable = ((void*)0);

  datum = fastgetattr(htup, Anum_pg_trigger_tgnewtable,
       tgrel->rd_att, &isnull);
  if (!isnull)
   build->tgnewtable =
    DatumGetCString(DirectFunctionCall1(nameout, datum));
  else
   build->tgnewtable = ((void*)0);

  datum = fastgetattr(htup, Anum_pg_trigger_tgqual,
       tgrel->rd_att, &isnull);
  if (!isnull)
   build->tgqual = TextDatumGetCString(datum);
  else
   build->tgqual = ((void*)0);

  numtrigs++;
 }

 systable_endscan(tgscan);
 table_close(tgrel, AccessShareLock);


 if (numtrigs == 0)
 {
  pfree(triggers);
  return;
 }


 trigdesc = (TriggerDesc *) palloc0(sizeof(TriggerDesc));
 trigdesc->triggers = triggers;
 trigdesc->numtriggers = numtrigs;
 for (i = 0; i < numtrigs; i++)
  SetTriggerFlags(trigdesc, &(triggers[i]));


 oldContext = MemoryContextSwitchTo(CacheMemoryContext);
 relation->trigdesc = CopyTriggerDesc(trigdesc);
 MemoryContextSwitchTo(oldContext);


 FreeTriggerDesc(trigdesc);
}
