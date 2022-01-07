
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int plpgsql_CastHashKey ;
typedef int plpgsql_CastHashEntry ;
typedef int ctl ;
struct TYPE_22__ {int (* func_setup ) (TYPE_4__*,TYPE_3__*) ;int assign_expr; int error_callback; } ;
struct TYPE_21__ {int keysize; int entrysize; void* hcxt; } ;
struct TYPE_20__ {int retisnull; int atomic; int * plugin_info; int * err_text; int * err_stmt; int * eval_econtext; scalar_t__ eval_processed; int * eval_tuptable; void* stmt_mcontext_parent; int * stmt_mcontext; void* cast_hash_context; int * cast_hash; int * simple_eval_estate; int ndatums; TYPE_14__* paramLI; void* datum_context; int * datums; int found_varno; TYPE_2__* rsi; int * tuple_store_owner; int * tuple_store_cxt; int * tuple_store_desc; int * tuple_store; int * cur_error; int * exitlabel; int readonly_func; int retisset; int retistuple; int fn_rettype; int rettype; scalar_t__ retval; int * evtrigdata; int * trigdata; TYPE_3__* func; } ;
struct TYPE_19__ {int ndatums; int found_varno; int fn_readonly; int fn_retset; int fn_retistuple; int fn_rettype; TYPE_4__* cur_estate; } ;
struct TYPE_18__ {TYPE_1__* econtext; } ;
struct TYPE_17__ {int * ecxt_per_query_memory; } ;
struct TYPE_16__ {int numParams; int * parserSetupArg; scalar_t__ parserSetup; int * paramCompileArg; int paramCompile; void* paramFetchArg; int paramFetch; } ;
typedef TYPE_2__ ReturnSetInfo ;
typedef scalar_t__ ParserSetupHook ;
typedef TYPE_3__ PLpgSQL_function ;
typedef TYPE_4__ PLpgSQL_execstate ;
typedef TYPE_5__ HASHCTL ;
typedef int EState ;
typedef scalar_t__ Datum ;


 int ALLOCSET_DEFAULT_SIZES ;
 void* AllocSetContextCreate (int ,char*,int ) ;
 void* CurrentMemoryContext ;
 int * CurrentResourceOwner ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int InvalidOid ;
 int TopMemoryContext ;
 int exec_assign_expr ;
 void* hash_create (char*,int,TYPE_5__*,int) ;
 TYPE_14__* makeParamList (int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int plpgsql_create_econtext (TYPE_4__*) ;
 int plpgsql_exec_error_callback ;
 int plpgsql_param_compile ;
 int plpgsql_param_fetch ;
 scalar_t__ plpgsql_parser_setup ;
 TYPE_8__** plpgsql_plugin_ptr ;
 void* shared_cast_context ;
 int * shared_cast_hash ;
 int * shared_simple_eval_estate ;
 int stub1 (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static void
plpgsql_estate_setup(PLpgSQL_execstate *estate,
      PLpgSQL_function *func,
      ReturnSetInfo *rsi,
      EState *simple_eval_estate)
{
 HASHCTL ctl;


 func->cur_estate = estate;

 estate->func = func;
 estate->trigdata = ((void*)0);
 estate->evtrigdata = ((void*)0);

 estate->retval = (Datum) 0;
 estate->retisnull = 1;
 estate->rettype = InvalidOid;

 estate->fn_rettype = func->fn_rettype;
 estate->retistuple = func->fn_retistuple;
 estate->retisset = func->fn_retset;

 estate->readonly_func = func->fn_readonly;
 estate->atomic = 1;

 estate->exitlabel = ((void*)0);
 estate->cur_error = ((void*)0);

 estate->tuple_store = ((void*)0);
 estate->tuple_store_desc = ((void*)0);
 if (rsi)
 {
  estate->tuple_store_cxt = rsi->econtext->ecxt_per_query_memory;
  estate->tuple_store_owner = CurrentResourceOwner;
 }
 else
 {
  estate->tuple_store_cxt = ((void*)0);
  estate->tuple_store_owner = ((void*)0);
 }
 estate->rsi = rsi;

 estate->found_varno = func->found_varno;
 estate->ndatums = func->ndatums;
 estate->datums = ((void*)0);

 estate->datum_context = CurrentMemoryContext;


 estate->paramLI = makeParamList(0);
 estate->paramLI->paramFetch = plpgsql_param_fetch;
 estate->paramLI->paramFetchArg = (void *) estate;
 estate->paramLI->paramCompile = plpgsql_param_compile;
 estate->paramLI->paramCompileArg = ((void*)0);
 estate->paramLI->parserSetup = (ParserSetupHook) plpgsql_parser_setup;
 estate->paramLI->parserSetupArg = ((void*)0);
 estate->paramLI->numParams = estate->ndatums;


 if (simple_eval_estate)
 {
  estate->simple_eval_estate = simple_eval_estate;

  memset(&ctl, 0, sizeof(ctl));
  ctl.keysize = sizeof(plpgsql_CastHashKey);
  ctl.entrysize = sizeof(plpgsql_CastHashEntry);
  ctl.hcxt = CurrentMemoryContext;
  estate->cast_hash = hash_create("PLpgSQL private cast cache",
          16,
          &ctl,
          HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
  estate->cast_hash_context = CurrentMemoryContext;
 }
 else
 {
  estate->simple_eval_estate = shared_simple_eval_estate;

  if (shared_cast_hash == ((void*)0))
  {
   shared_cast_context = AllocSetContextCreate(TopMemoryContext,
              "PLpgSQL cast info",
              ALLOCSET_DEFAULT_SIZES);
   memset(&ctl, 0, sizeof(ctl));
   ctl.keysize = sizeof(plpgsql_CastHashKey);
   ctl.entrysize = sizeof(plpgsql_CastHashEntry);
   ctl.hcxt = shared_cast_context;
   shared_cast_hash = hash_create("PLpgSQL cast cache",
             16,
             &ctl,
             HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
  }
  estate->cast_hash = shared_cast_hash;
  estate->cast_hash_context = shared_cast_context;
 }






 estate->stmt_mcontext = ((void*)0);
 estate->stmt_mcontext_parent = CurrentMemoryContext;

 estate->eval_tuptable = ((void*)0);
 estate->eval_processed = 0;
 estate->eval_econtext = ((void*)0);

 estate->err_stmt = ((void*)0);
 estate->err_text = ((void*)0);

 estate->plugin_info = ((void*)0);




 plpgsql_create_econtext(estate);







 if (*plpgsql_plugin_ptr)
 {
  (*plpgsql_plugin_ptr)->error_callback = plpgsql_exec_error_callback;
  (*plpgsql_plugin_ptr)->assign_expr = exec_assign_expr;

  if ((*plpgsql_plugin_ptr)->func_setup)
   ((*plpgsql_plugin_ptr)->func_setup) (estate, func);
 }
}
