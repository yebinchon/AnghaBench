
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int tg_event; TYPE_1__* tg_trigger; int * tg_newtable; int * tg_oldtable; } ;
typedef TYPE_3__ TriggerData ;
struct TYPE_18__ {TYPE_2__* flinfo; scalar_t__ isnull; } ;
struct TYPE_17__ {scalar_t__ fn_oid; } ;
struct TYPE_15__ {int fn_oid; } ;
struct TYPE_14__ {scalar_t__ tgfoid; } ;
typedef int PgStat_FunctionCallUsage ;
typedef int Node ;
typedef int MemoryContext ;
typedef int Instrumentation ;
typedef int HeapTuple ;
typedef TYPE_4__ FmgrInfo ;
typedef int Datum ;


 int AFTER_TRIGGER_DEFERRABLE ;
 int AFTER_TRIGGER_INITDEFERRED ;
 int Assert (int) ;
 int DatumGetPointer (int ) ;
 int ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED ;
 int ERROR ;
 int FunctionCallInvoke (TYPE_5__*) ;
 int InitFunctionCallInfoData (TYPE_5__,TYPE_4__*,int ,scalar_t__,int *,int *) ;
 int InstrStartNode (int *) ;
 int InstrStopNode (int *,int) ;
 scalar_t__ InvalidOid ;
 int LOCAL_FCINFO (TYPE_5__*,int ) ;
 int MemoryContextSwitchTo (int ) ;
 int MyTriggerDepth ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 scalar_t__ TRIGGER_FIRED_AFTER (int) ;
 scalar_t__ TRIGGER_FIRED_BY_DELETE (int) ;
 scalar_t__ TRIGGER_FIRED_BY_INSERT (int) ;
 scalar_t__ TRIGGER_FIRED_BY_UPDATE (int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 TYPE_5__* fcinfo ;
 int fmgr_info (scalar_t__,TYPE_4__*) ;
 int pgstat_end_function_usage (int *,int) ;
 int pgstat_init_function_usage (TYPE_5__*,int *) ;

__attribute__((used)) static HeapTuple
ExecCallTriggerFunc(TriggerData *trigdata,
     int tgindx,
     FmgrInfo *finfo,
     Instrumentation *instr,
     MemoryContext per_tuple_context)
{
 LOCAL_FCINFO(fcinfo, 0);
 PgStat_FunctionCallUsage fcusage;
 Datum result;
 MemoryContext oldContext;





 Assert(((TRIGGER_FIRED_BY_INSERT(trigdata->tg_event) ||
    TRIGGER_FIRED_BY_UPDATE(trigdata->tg_event) ||
    TRIGGER_FIRED_BY_DELETE(trigdata->tg_event)) &&
   TRIGGER_FIRED_AFTER(trigdata->tg_event) &&
   !(trigdata->tg_event & AFTER_TRIGGER_DEFERRABLE) &&
   !(trigdata->tg_event & AFTER_TRIGGER_INITDEFERRED)) ||
     (trigdata->tg_oldtable == ((void*)0) && trigdata->tg_newtable == ((void*)0)));

 finfo += tgindx;





 if (finfo->fn_oid == InvalidOid)
  fmgr_info(trigdata->tg_trigger->tgfoid, finfo);

 Assert(finfo->fn_oid == trigdata->tg_trigger->tgfoid);




 if (instr)
  InstrStartNode(instr + tgindx);







 oldContext = MemoryContextSwitchTo(per_tuple_context);




 InitFunctionCallInfoData(*fcinfo, finfo, 0,
        InvalidOid, (Node *) trigdata, ((void*)0));

 pgstat_init_function_usage(fcinfo, &fcusage);

 MyTriggerDepth++;
 PG_TRY();
 {
  result = FunctionCallInvoke(fcinfo);
 }
 PG_FINALLY();
 {
  MyTriggerDepth--;
 }
 PG_END_TRY();

 pgstat_end_function_usage(&fcusage, 1);

 MemoryContextSwitchTo(oldContext);





 if (fcinfo->isnull)
  ereport(ERROR,
    (errcode(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
     errmsg("trigger function %u returned null value",
      fcinfo->flinfo->fn_oid)));





 if (instr)
  InstrStopNode(instr + tgindx, 1);

 return (HeapTuple) DatumGetPointer(result);
}
