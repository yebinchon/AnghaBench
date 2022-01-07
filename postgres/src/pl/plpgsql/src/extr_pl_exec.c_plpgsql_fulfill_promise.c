
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_19__ {TYPE_3__* evtrigdata; TYPE_2__* trigdata; int datum_context; } ;
struct TYPE_18__ {int promise; } ;
struct TYPE_17__ {char* event; char* tag; } ;
struct TYPE_16__ {TYPE_1__* tg_trigger; TYPE_12__* tg_relation; int tg_event; } ;
struct TYPE_15__ {int tgnargs; int * tgargs; int tgname; } ;
struct TYPE_14__ {int rd_id; } ;
typedef TYPE_4__ PLpgSQL_var ;
typedef TYPE_5__ PLpgSQL_execstate ;
typedef int MemoryContext ;
typedef int Datum ;


 int CStringGetDatum (int ) ;
 int CStringGetTextDatum (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int Int16GetDatum (int) ;
 int MemoryContextSwitchTo (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PLPGSQL_PROMISE_NONE ;
 int PointerGetDatum (int ) ;
 int RelationGetNamespace (TYPE_12__*) ;
 int RelationGetRelationName (TYPE_12__*) ;
 int TEXTOID ;
 int TRIGGER_FIRED_AFTER (int ) ;
 int TRIGGER_FIRED_BEFORE (int ) ;
 int TRIGGER_FIRED_BY_DELETE (int ) ;
 int TRIGGER_FIRED_BY_INSERT (int ) ;
 int TRIGGER_FIRED_BY_TRUNCATE (int ) ;
 int TRIGGER_FIRED_BY_UPDATE (int ) ;
 int TRIGGER_FIRED_FOR_ROW (int ) ;
 int TRIGGER_FIRED_FOR_STATEMENT (int ) ;
 int TRIGGER_FIRED_INSTEAD (int ) ;
 int assign_simple_var (TYPE_5__*,TYPE_4__*,int ,int,int) ;
 int assign_text_var (TYPE_5__*,TYPE_4__*,char*) ;
 int construct_md_array (int *,int *,int,int*,int*,int ,int,int,char) ;
 int elog (int ,char*,...) ;
 int get_namespace_name (int ) ;
 int namein ;
 int * palloc (int) ;

__attribute__((used)) static void
plpgsql_fulfill_promise(PLpgSQL_execstate *estate,
      PLpgSQL_var *var)
{
 MemoryContext oldcontext;

 if (var->promise == PLPGSQL_PROMISE_NONE)
  return;
 oldcontext = MemoryContextSwitchTo(estate->datum_context);

 switch (var->promise)
 {
  case 135:
   if (estate->trigdata == ((void*)0))
    elog(ERROR, "trigger promise is not in a trigger function");
   assign_simple_var(estate, var,
         DirectFunctionCall1(namein,
              CStringGetDatum(estate->trigdata->tg_trigger->tgname)),
         0, 1);
   break;

  case 128:
   if (estate->trigdata == ((void*)0))
    elog(ERROR, "trigger promise is not in a trigger function");
   if (TRIGGER_FIRED_BEFORE(estate->trigdata->tg_event))
    assign_text_var(estate, var, "BEFORE");
   else if (TRIGGER_FIRED_AFTER(estate->trigdata->tg_event))
    assign_text_var(estate, var, "AFTER");
   else if (TRIGGER_FIRED_INSTEAD(estate->trigdata->tg_event))
    assign_text_var(estate, var, "INSTEAD OF");
   else
    elog(ERROR, "unrecognized trigger execution time: not BEFORE, AFTER, or INSTEAD OF");
   break;

  case 136:
   if (estate->trigdata == ((void*)0))
    elog(ERROR, "trigger promise is not in a trigger function");
   if (TRIGGER_FIRED_FOR_ROW(estate->trigdata->tg_event))
    assign_text_var(estate, var, "ROW");
   else if (TRIGGER_FIRED_FOR_STATEMENT(estate->trigdata->tg_event))
    assign_text_var(estate, var, "STATEMENT");
   else
    elog(ERROR, "unrecognized trigger event type: not ROW or STATEMENT");
   break;

  case 133:
   if (estate->trigdata == ((void*)0))
    elog(ERROR, "trigger promise is not in a trigger function");
   if (TRIGGER_FIRED_BY_INSERT(estate->trigdata->tg_event))
    assign_text_var(estate, var, "INSERT");
   else if (TRIGGER_FIRED_BY_UPDATE(estate->trigdata->tg_event))
    assign_text_var(estate, var, "UPDATE");
   else if (TRIGGER_FIRED_BY_DELETE(estate->trigdata->tg_event))
    assign_text_var(estate, var, "DELETE");
   else if (TRIGGER_FIRED_BY_TRUNCATE(estate->trigdata->tg_event))
    assign_text_var(estate, var, "TRUNCATE");
   else
    elog(ERROR, "unrecognized trigger action: not INSERT, DELETE, UPDATE, or TRUNCATE");
   break;

  case 132:
   if (estate->trigdata == ((void*)0))
    elog(ERROR, "trigger promise is not in a trigger function");
   assign_simple_var(estate, var,
         ObjectIdGetDatum(estate->trigdata->tg_relation->rd_id),
         0, 0);
   break;

  case 131:
   if (estate->trigdata == ((void*)0))
    elog(ERROR, "trigger promise is not in a trigger function");
   assign_simple_var(estate, var,
         DirectFunctionCall1(namein,
              CStringGetDatum(RelationGetRelationName(estate->trigdata->tg_relation))),
         0, 1);
   break;

  case 130:
   if (estate->trigdata == ((void*)0))
    elog(ERROR, "trigger promise is not in a trigger function");
   assign_simple_var(estate, var,
         DirectFunctionCall1(namein,
              CStringGetDatum(get_namespace_name(RelationGetNamespace(estate->trigdata->tg_relation)))),
         0, 1);
   break;

  case 134:
   if (estate->trigdata == ((void*)0))
    elog(ERROR, "trigger promise is not in a trigger function");
   assign_simple_var(estate, var,
         Int16GetDatum(estate->trigdata->tg_trigger->tgnargs),
         0, 0);
   break;

  case 138:
   if (estate->trigdata == ((void*)0))
    elog(ERROR, "trigger promise is not in a trigger function");
   if (estate->trigdata->tg_trigger->tgnargs > 0)
   {




    int nelems = estate->trigdata->tg_trigger->tgnargs;
    Datum *elems;
    int dims[1];
    int lbs[1];
    int i;

    elems = palloc(sizeof(Datum) * nelems);
    for (i = 0; i < nelems; i++)
     elems[i] = CStringGetTextDatum(estate->trigdata->tg_trigger->tgargs[i]);
    dims[0] = nelems;
    lbs[0] = 0;

    assign_simple_var(estate, var,
          PointerGetDatum(construct_md_array(elems, ((void*)0),
                  1, dims, lbs,
                  TEXTOID,
                  -1, 0, 'i')),
          0, 1);
   }
   else
   {
    assign_simple_var(estate, var, (Datum) 0, 1, 0);
   }
   break;

  case 137:
   if (estate->evtrigdata == ((void*)0))
    elog(ERROR, "event trigger promise is not in an event trigger function");
   assign_text_var(estate, var, estate->evtrigdata->event);
   break;

  case 129:
   if (estate->evtrigdata == ((void*)0))
    elog(ERROR, "event trigger promise is not in an event trigger function");
   assign_text_var(estate, var, estate->evtrigdata->tag);
   break;

  default:
   elog(ERROR, "unrecognized promise type: %d", var->promise);
 }

 MemoryContextSwitchTo(oldcontext);
}
