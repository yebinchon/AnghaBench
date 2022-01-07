
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_9__ {int attinmeta; int tuple_desc; int multi_call_memory_ctx; void* user_fctx; } ;
struct TYPE_8__ {struct TYPE_8__* left; } ;
struct TYPE_7__ {int maxdepth; size_t stackpos; TYPE_2__** stack; TYPE_2__* root; } ;
typedef TYPE_1__ TSVectorStat ;
typedef TYPE_2__ StatEntry ;
typedef int MemoryContext ;
typedef int FunctionCallInfo ;
typedef TYPE_3__ FuncCallContext ;
typedef int AttrNumber ;


 int Assert (int) ;
 int BlessTupleDesc (int ) ;
 int CreateTemplateTupleDesc (int) ;
 int INT4OID ;
 int MemoryContextSwitchTo (int ) ;
 int TEXTOID ;
 int TupleDescGetAttInMetadata (int ) ;
 int TupleDescInitEntry (int ,int ,char*,int ,int,int ) ;
 TYPE_2__** palloc0 (int) ;

__attribute__((used)) static void
ts_setup_firstcall(FunctionCallInfo fcinfo, FuncCallContext *funcctx,
       TSVectorStat *stat)
{
 TupleDesc tupdesc;
 MemoryContext oldcontext;
 StatEntry *node;

 funcctx->user_fctx = (void *) stat;

 oldcontext = MemoryContextSwitchTo(funcctx->multi_call_memory_ctx);

 stat->stack = palloc0(sizeof(StatEntry *) * (stat->maxdepth + 1));
 stat->stackpos = 0;

 node = stat->root;

 if (node == ((void*)0))
  stat->stack[stat->stackpos] = ((void*)0);
 else
  for (;;)
  {
   stat->stack[stat->stackpos] = node;
   if (node->left)
   {
    stat->stackpos++;
    node = node->left;
   }
   else
    break;
  }
 Assert(stat->stackpos <= stat->maxdepth);

 tupdesc = CreateTemplateTupleDesc(3);
 TupleDescInitEntry(tupdesc, (AttrNumber) 1, "word",
        TEXTOID, -1, 0);
 TupleDescInitEntry(tupdesc, (AttrNumber) 2, "ndoc",
        INT4OID, -1, 0);
 TupleDescInitEntry(tupdesc, (AttrNumber) 3, "nentry",
        INT4OID, -1, 0);
 funcctx->tuple_desc = BlessTupleDesc(tupdesc);
 funcctx->attinmeta = TupleDescGetAttInMetadata(tupdesc);

 MemoryContextSwitchTo(oldcontext);
}
