
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_8__ {int attinmeta; void* user_fctx; int multi_call_memory_ctx; } ;
struct TYPE_7__ {int lextypeOid; } ;
struct TYPE_6__ {int * list; scalar_t__ cur; } ;
typedef TYPE_1__ TSTokenTypeStorage ;
typedef TYPE_2__ TSParserCacheEntry ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int LexDescr ;
typedef TYPE_3__ FuncCallContext ;
typedef int Datum ;
typedef int AttrNumber ;


 int CreateTemplateTupleDesc (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 int INT4OID ;
 int MemoryContextSwitchTo (int ) ;
 int OidFunctionCall1 (int ,int ) ;
 int OidIsValid (int ) ;
 int TEXTOID ;
 int TupleDescGetAttInMetadata (int ) ;
 int TupleDescInitEntry (int ,int ,char*,int ,int,int ) ;
 int elog (int ,char*,int ) ;
 TYPE_2__* lookup_ts_parser_cache (int ) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
tt_setup_firstcall(FuncCallContext *funcctx, Oid prsid)
{
 TupleDesc tupdesc;
 MemoryContext oldcontext;
 TSTokenTypeStorage *st;
 TSParserCacheEntry *prs = lookup_ts_parser_cache(prsid);

 if (!OidIsValid(prs->lextypeOid))
  elog(ERROR, "method lextype isn't defined for text search parser %u",
    prsid);

 oldcontext = MemoryContextSwitchTo(funcctx->multi_call_memory_ctx);

 st = (TSTokenTypeStorage *) palloc(sizeof(TSTokenTypeStorage));
 st->cur = 0;

 st->list = (LexDescr *) DatumGetPointer(OidFunctionCall1(prs->lextypeOid,
                (Datum) 0));
 funcctx->user_fctx = (void *) st;

 tupdesc = CreateTemplateTupleDesc(3);
 TupleDescInitEntry(tupdesc, (AttrNumber) 1, "tokid",
        INT4OID, -1, 0);
 TupleDescInitEntry(tupdesc, (AttrNumber) 2, "alias",
        TEXTOID, -1, 0);
 TupleDescInitEntry(tupdesc, (AttrNumber) 3, "description",
        TEXTOID, -1, 0);

 funcctx->attinmeta = TupleDescGetAttInMetadata(tupdesc);
 MemoryContextSwitchTo(oldcontext);
}
