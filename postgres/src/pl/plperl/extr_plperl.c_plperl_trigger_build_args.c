
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_8__ {int tg_event; TYPE_5__* tg_relation; TYPE_1__* tg_trigger; int tg_newtuple; int tg_trigtuple; } ;
typedef TYPE_2__ TriggerData ;
struct TYPE_10__ {int rd_id; int rd_att; } ;
struct TYPE_9__ {scalar_t__ context; } ;
struct TYPE_7__ {char* tgname; int tgnargs; char** tgargs; } ;
typedef int SV ;
typedef int HV ;
typedef TYPE_3__* FunctionCallInfo ;
typedef int AV ;


 char* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 char* SPI_getnspname (TYPE_5__*) ;
 char* SPI_getrelname (TYPE_5__*) ;
 scalar_t__ TRIGGER_FIRED_AFTER (int ) ;
 scalar_t__ TRIGGER_FIRED_BEFORE (int ) ;
 scalar_t__ TRIGGER_FIRED_BY_DELETE (int ) ;
 scalar_t__ TRIGGER_FIRED_BY_INSERT (int ) ;
 scalar_t__ TRIGGER_FIRED_BY_TRUNCATE (int ) ;
 scalar_t__ TRIGGER_FIRED_BY_UPDATE (int ) ;
 scalar_t__ TRIGGER_FIRED_FOR_ROW (int ) ;
 scalar_t__ TRIGGER_FIRED_FOR_STATEMENT (int ) ;
 scalar_t__ TRIGGER_FIRED_INSTEAD (int ) ;
 int av_extend (int *,int) ;
 int av_push (int *,int *) ;
 int * cstr2sv (char*) ;
 int dTHX ;
 int hv_ksplit (int *,int) ;
 int hv_store_string (int *,char*,int *) ;
 int * newAV () ;
 int * newHV () ;
 int * newRV_noinc (int *) ;
 int * newSViv (int) ;
 int oidout ;
 int * plperl_hash_from_tuple (int ,int ,int) ;

__attribute__((used)) static SV *
plperl_trigger_build_args(FunctionCallInfo fcinfo)
{
 dTHX;
 TriggerData *tdata;
 TupleDesc tupdesc;
 int i;
 char *level;
 char *event;
 char *relid;
 char *when;
 HV *hv;

 hv = newHV();
 hv_ksplit(hv, 12);

 tdata = (TriggerData *) fcinfo->context;
 tupdesc = tdata->tg_relation->rd_att;

 relid = DatumGetCString(
       DirectFunctionCall1(oidout,
            ObjectIdGetDatum(tdata->tg_relation->rd_id)
            )
  );

 hv_store_string(hv, "name", cstr2sv(tdata->tg_trigger->tgname));
 hv_store_string(hv, "relid", cstr2sv(relid));






 if (TRIGGER_FIRED_BY_INSERT(tdata->tg_event))
 {
  event = "INSERT";
  if (TRIGGER_FIRED_FOR_ROW(tdata->tg_event))
   hv_store_string(hv, "new",
       plperl_hash_from_tuple(tdata->tg_trigtuple,
               tupdesc,
               !TRIGGER_FIRED_BEFORE(tdata->tg_event)));
 }
 else if (TRIGGER_FIRED_BY_DELETE(tdata->tg_event))
 {
  event = "DELETE";
  if (TRIGGER_FIRED_FOR_ROW(tdata->tg_event))
   hv_store_string(hv, "old",
       plperl_hash_from_tuple(tdata->tg_trigtuple,
               tupdesc,
               1));
 }
 else if (TRIGGER_FIRED_BY_UPDATE(tdata->tg_event))
 {
  event = "UPDATE";
  if (TRIGGER_FIRED_FOR_ROW(tdata->tg_event))
  {
   hv_store_string(hv, "old",
       plperl_hash_from_tuple(tdata->tg_trigtuple,
               tupdesc,
               1));
   hv_store_string(hv, "new",
       plperl_hash_from_tuple(tdata->tg_newtuple,
               tupdesc,
               !TRIGGER_FIRED_BEFORE(tdata->tg_event)));
  }
 }
 else if (TRIGGER_FIRED_BY_TRUNCATE(tdata->tg_event))
  event = "TRUNCATE";
 else
  event = "UNKNOWN";

 hv_store_string(hv, "event", cstr2sv(event));
 hv_store_string(hv, "argc", newSViv(tdata->tg_trigger->tgnargs));

 if (tdata->tg_trigger->tgnargs > 0)
 {
  AV *av = newAV();

  av_extend(av, tdata->tg_trigger->tgnargs);
  for (i = 0; i < tdata->tg_trigger->tgnargs; i++)
   av_push(av, cstr2sv(tdata->tg_trigger->tgargs[i]));
  hv_store_string(hv, "args", newRV_noinc((SV *) av));
 }

 hv_store_string(hv, "relname",
     cstr2sv(SPI_getrelname(tdata->tg_relation)));

 hv_store_string(hv, "table_name",
     cstr2sv(SPI_getrelname(tdata->tg_relation)));

 hv_store_string(hv, "table_schema",
     cstr2sv(SPI_getnspname(tdata->tg_relation)));

 if (TRIGGER_FIRED_BEFORE(tdata->tg_event))
  when = "BEFORE";
 else if (TRIGGER_FIRED_AFTER(tdata->tg_event))
  when = "AFTER";
 else if (TRIGGER_FIRED_INSTEAD(tdata->tg_event))
  when = "INSTEAD OF";
 else
  when = "UNKNOWN";
 hv_store_string(hv, "when", cstr2sv(when));

 if (TRIGGER_FIRED_FOR_ROW(tdata->tg_event))
  level = "ROW";
 else if (TRIGGER_FIRED_FOR_STATEMENT(tdata->tg_event))
  level = "STATEMENT";
 else
  level = "UNKNOWN";
 hv_store_string(hv, "level", cstr2sv(level));

 return newRV_noinc((SV *) hv);
}
