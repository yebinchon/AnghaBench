
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int text ;
typedef int TupleDesc ;
struct TYPE_11__ {int attinmeta; void* user_fctx; int multi_call_memory_ctx; } ;
struct TYPE_10__ {char* lexeme; int type; } ;
struct TYPE_9__ {size_t cur; int len; TYPE_3__* list; } ;
struct TYPE_8__ {int prsend; int prstoken; int prsstart; } ;
typedef TYPE_1__ TSParserCacheEntry ;
typedef TYPE_2__ PrsStorage ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_3__ LexemeEntry ;
typedef TYPE_4__ FuncCallContext ;
typedef int AttrNumber ;


 int CreateTemplateTupleDesc (int) ;
 int DatumGetInt32 (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int FunctionCall1 (int *,int ) ;
 int FunctionCall2 (int *,int ,int ) ;
 int FunctionCall3 (int *,int ,int ,int ) ;
 int INT4OID ;
 int Int32GetDatum (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (void*) ;
 int TEXTOID ;
 int TupleDescGetAttInMetadata (int ) ;
 int TupleDescInitEntry (int ,int ,char*,int ,int,int ) ;
 void* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 TYPE_1__* lookup_ts_parser_cache (int ) ;
 int memcpy (char*,char*,int) ;
 char* palloc (int) ;
 scalar_t__ repalloc (TYPE_3__*,int) ;

__attribute__((used)) static void
prs_setup_firstcall(FuncCallContext *funcctx, Oid prsid, text *txt)
{
 TupleDesc tupdesc;
 MemoryContext oldcontext;
 PrsStorage *st;
 TSParserCacheEntry *prs = lookup_ts_parser_cache(prsid);
 char *lex = ((void*)0);
 int llen = 0,
    type = 0;
 void *prsdata;

 oldcontext = MemoryContextSwitchTo(funcctx->multi_call_memory_ctx);

 st = (PrsStorage *) palloc(sizeof(PrsStorage));
 st->cur = 0;
 st->len = 16;
 st->list = (LexemeEntry *) palloc(sizeof(LexemeEntry) * st->len);

 prsdata = (void *) DatumGetPointer(FunctionCall2(&prs->prsstart,
              PointerGetDatum(VARDATA_ANY(txt)),
              Int32GetDatum(VARSIZE_ANY_EXHDR(txt))));

 while ((type = DatumGetInt32(FunctionCall3(&prs->prstoken,
              PointerGetDatum(prsdata),
              PointerGetDatum(&lex),
              PointerGetDatum(&llen)))) != 0)
 {
  if (st->cur >= st->len)
  {
   st->len = 2 * st->len;
   st->list = (LexemeEntry *) repalloc(st->list, sizeof(LexemeEntry) * st->len);
  }
  st->list[st->cur].lexeme = palloc(llen + 1);
  memcpy(st->list[st->cur].lexeme, lex, llen);
  st->list[st->cur].lexeme[llen] = '\0';
  st->list[st->cur].type = type;
  st->cur++;
 }

 FunctionCall1(&prs->prsend, PointerGetDatum(prsdata));

 st->len = st->cur;
 st->cur = 0;

 funcctx->user_fctx = (void *) st;
 tupdesc = CreateTemplateTupleDesc(2);
 TupleDescInitEntry(tupdesc, (AttrNumber) 1, "tokid",
        INT4OID, -1, 0);
 TupleDescInitEntry(tupdesc, (AttrNumber) 2, "token",
        TEXTOID, -1, 0);

 funcctx->attinmeta = TupleDescGetAttInMetadata(tupdesc);
 MemoryContextSwitchTo(oldcontext);
}
