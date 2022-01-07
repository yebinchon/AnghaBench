
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {size_t curwords; size_t lenwords; int pos; TYPE_5__* words; } ;
struct TYPE_13__ {int pos; } ;
struct TYPE_17__ {int flags; TYPE_1__ pos; scalar_t__ alen; int nvariant; scalar_t__ word; int len; } ;
struct TYPE_16__ {int prsId; } ;
struct TYPE_15__ {int flags; int nvariant; scalar_t__ lexeme; } ;
struct TYPE_14__ {int prsend; int prstoken; int prsstart; } ;
typedef TYPE_2__ TSParserCacheEntry ;
typedef TYPE_3__ TSLexeme ;
typedef TYPE_4__ TSConfigCacheEntry ;
typedef TYPE_5__ ParsedWord ;
typedef TYPE_6__ ParsedText ;
typedef int Oid ;
typedef int LexizeData ;


 int DatumGetInt32 (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int FunctionCall1 (int *,int ) ;
 int FunctionCall2 (int *,int ,int ) ;
 int FunctionCall3 (int *,int ,int ,int ) ;
 int Int32GetDatum (int) ;
 int LIMITPOS (int ) ;
 int LexizeAddLemm (int *,int,char*,int) ;
 TYPE_3__* LexizeExec (int *,int *) ;
 int LexizeInit (int *,TYPE_4__*) ;
 int MAXSTRLEN ;
 int NOTICE ;
 int PointerGetDatum (void*) ;
 int TSL_ADDPOS ;
 int TSL_PREFIX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int) ;
 int errmsg (char*) ;
 TYPE_4__* lookup_ts_config_cache (int ) ;
 TYPE_2__* lookup_ts_parser_cache (int ) ;
 int pfree (TYPE_3__*) ;
 scalar_t__ repalloc (void*,int) ;
 int strlen (scalar_t__) ;

void
parsetext(Oid cfgId, ParsedText *prs, char *buf, int buflen)
{
 int type,
    lenlemm;
 char *lemm = ((void*)0);
 LexizeData ldata;
 TSLexeme *norms;
 TSConfigCacheEntry *cfg;
 TSParserCacheEntry *prsobj;
 void *prsdata;

 cfg = lookup_ts_config_cache(cfgId);
 prsobj = lookup_ts_parser_cache(cfg->prsId);

 prsdata = (void *) DatumGetPointer(FunctionCall2(&prsobj->prsstart,
              PointerGetDatum(buf),
              Int32GetDatum(buflen)));

 LexizeInit(&ldata, cfg);

 do
 {
  type = DatumGetInt32(FunctionCall3(&(prsobj->prstoken),
             PointerGetDatum(prsdata),
             PointerGetDatum(&lemm),
             PointerGetDatum(&lenlemm)));

  if (type > 0 && lenlemm >= MAXSTRLEN)
  {
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("word is too long to be indexed"),
      errdetail("Words longer than %d characters are ignored.",
          MAXSTRLEN)));

  }

  LexizeAddLemm(&ldata, type, lemm, lenlemm);

  while ((norms = LexizeExec(&ldata, ((void*)0))) != ((void*)0))
  {
   TSLexeme *ptr = norms;

   prs->pos++;

   while (ptr->lexeme)
   {
    if (prs->curwords == prs->lenwords)
    {
     prs->lenwords *= 2;
     prs->words = (ParsedWord *) repalloc((void *) prs->words, prs->lenwords * sizeof(ParsedWord));
    }

    if (ptr->flags & TSL_ADDPOS)
     prs->pos++;
    prs->words[prs->curwords].len = strlen(ptr->lexeme);
    prs->words[prs->curwords].word = ptr->lexeme;
    prs->words[prs->curwords].nvariant = ptr->nvariant;
    prs->words[prs->curwords].flags = ptr->flags & TSL_PREFIX;
    prs->words[prs->curwords].alen = 0;
    prs->words[prs->curwords].pos.pos = LIMITPOS(prs->pos);
    ptr++;
    prs->curwords++;
   }
   pfree(norms);
  }
 } while (type > 0);

 FunctionCall1(&(prsobj->prsend), PointerGetDatum(prsdata));
}
