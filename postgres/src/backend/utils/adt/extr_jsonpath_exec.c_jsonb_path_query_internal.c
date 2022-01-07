
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * user_fctx; int multi_call_memory_ctx; } ;
struct TYPE_9__ {int member_0; } ;
typedef int MemoryContext ;
typedef int ListCell ;
typedef int List ;
typedef int JsonbValue ;
typedef int Jsonb ;
typedef TYPE_1__ JsonValueList ;
typedef int JsonPath ;
typedef int FunctionCallInfo ;
typedef TYPE_2__ FuncCallContext ;
typedef int Datum ;


 int * JsonValueListGetList (TYPE_1__*) ;
 int JsonbPGetDatum (int ) ;
 int JsonbValueToJsonb (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int PG_GETARG_BOOL (int) ;
 int * PG_GETARG_JSONB_P_COPY (int) ;
 int * PG_GETARG_JSONPATH_P_COPY (int) ;
 TYPE_2__* SRF_FIRSTCALL_INIT () ;
 scalar_t__ SRF_IS_FIRSTCALL () ;
 TYPE_2__* SRF_PERCALL_SETUP () ;
 int SRF_RETURN_DONE (TYPE_2__*) ;
 int SRF_RETURN_NEXT (TYPE_2__*,int ) ;
 int executeJsonPath (int *,int *,int *,int,TYPE_1__*,int) ;
 int * lfirst (int *) ;
 int * list_delete_first (int *) ;
 int * list_head (int *) ;

__attribute__((used)) static Datum
jsonb_path_query_internal(FunctionCallInfo fcinfo, bool tz)
{
 FuncCallContext *funcctx;
 List *found;
 JsonbValue *v;
 ListCell *c;

 if (SRF_IS_FIRSTCALL())
 {
  JsonPath *jp;
  Jsonb *jb;
  MemoryContext oldcontext;
  Jsonb *vars;
  bool silent;
  JsonValueList found = {0};

  funcctx = SRF_FIRSTCALL_INIT();
  oldcontext = MemoryContextSwitchTo(funcctx->multi_call_memory_ctx);

  jb = PG_GETARG_JSONB_P_COPY(0);
  jp = PG_GETARG_JSONPATH_P_COPY(1);
  vars = PG_GETARG_JSONB_P_COPY(2);
  silent = PG_GETARG_BOOL(3);

  (void) executeJsonPath(jp, vars, jb, !silent, &found, tz);

  funcctx->user_fctx = JsonValueListGetList(&found);

  MemoryContextSwitchTo(oldcontext);
 }

 funcctx = SRF_PERCALL_SETUP();
 found = funcctx->user_fctx;

 c = list_head(found);

 if (c == ((void*)0))
  SRF_RETURN_DONE(funcctx);

 v = lfirst(c);
 funcctx->user_fctx = list_delete_first(found);

 SRF_RETURN_NEXT(funcctx, JsonbPGetDatum(JsonbValueToJsonb(v)));
}
