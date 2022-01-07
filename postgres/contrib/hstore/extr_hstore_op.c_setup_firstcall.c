
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_3__ {int tuple_desc; void* user_fctx; int multi_call_memory_ctx; } ;
typedef int MemoryContext ;
typedef int HStore ;
typedef scalar_t__ FunctionCallInfo ;
typedef TYPE_1__ FuncCallContext ;


 int BlessTupleDesc (int ) ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 int VARSIZE (int *) ;
 int elog (int ,char*) ;
 scalar_t__ get_call_result_type (scalar_t__,int *,int *) ;
 int memcpy (int *,int *,int ) ;
 scalar_t__ palloc (int ) ;

__attribute__((used)) static void
setup_firstcall(FuncCallContext *funcctx, HStore *hs,
    FunctionCallInfo fcinfo)
{
 MemoryContext oldcontext;
 HStore *st;

 oldcontext = MemoryContextSwitchTo(funcctx->multi_call_memory_ctx);

 st = (HStore *) palloc(VARSIZE(hs));
 memcpy(st, hs, VARSIZE(hs));

 funcctx->user_fctx = (void *) st;

 if (fcinfo)
 {
  TupleDesc tupdesc;


  if (get_call_result_type(fcinfo, ((void*)0), &tupdesc) != TYPEFUNC_COMPOSITE)
   elog(ERROR, "return type must be a row type");

  funcctx->tuple_desc = BlessTupleDesc(tupdesc);
 }

 MemoryContextSwitchTo(oldcontext);
}
