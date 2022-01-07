
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tg_event; } ;
typedef TYPE_1__ TriggerData ;
struct TYPE_6__ {scalar_t__ context; } ;
typedef TYPE_2__* FunctionCallInfo ;


 int CALLED_AS_TRIGGER (TYPE_2__*) ;
 int ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED ;
 int ERROR ;



 int TRIGGER_FIRED_AFTER (int ) ;
 int TRIGGER_FIRED_BY_DELETE (int ) ;
 int TRIGGER_FIRED_BY_INSERT (int ) ;
 int TRIGGER_FIRED_BY_UPDATE (int ) ;
 int TRIGGER_FIRED_FOR_ROW (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

__attribute__((used)) static void
ri_CheckTrigger(FunctionCallInfo fcinfo, const char *funcname, int tgkind)
{
 TriggerData *trigdata = (TriggerData *) fcinfo->context;

 if (!CALLED_AS_TRIGGER(fcinfo))
  ereport(ERROR,
    (errcode(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
     errmsg("function \"%s\" was not called by trigger manager", funcname)));




 if (!TRIGGER_FIRED_AFTER(trigdata->tg_event) ||
  !TRIGGER_FIRED_FOR_ROW(trigdata->tg_event))
  ereport(ERROR,
    (errcode(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
     errmsg("function \"%s\" must be fired AFTER ROW", funcname)));

 switch (tgkind)
 {
  case 129:
   if (!TRIGGER_FIRED_BY_INSERT(trigdata->tg_event))
    ereport(ERROR,
      (errcode(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
       errmsg("function \"%s\" must be fired for INSERT", funcname)));
   break;
  case 128:
   if (!TRIGGER_FIRED_BY_UPDATE(trigdata->tg_event))
    ereport(ERROR,
      (errcode(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
       errmsg("function \"%s\" must be fired for UPDATE", funcname)));
   break;
  case 130:
   if (!TRIGGER_FIRED_BY_DELETE(trigdata->tg_event))
    ereport(ERROR,
      (errcode(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
       errmsg("function \"%s\" must be fired for DELETE", funcname)));
   break;
 }
}
