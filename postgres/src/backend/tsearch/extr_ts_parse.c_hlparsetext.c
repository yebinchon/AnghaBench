
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int vectorpos; } ;
struct TYPE_10__ {int prsId; } ;
struct TYPE_9__ {int prsend; int prstoken; int prsstart; } ;
typedef int TSQuery ;
typedef TYPE_1__ TSParserCacheEntry ;
typedef int TSLexeme ;
typedef TYPE_2__ TSConfigCacheEntry ;
typedef int ParsedLex ;
typedef int Oid ;
typedef int LexizeData ;
typedef TYPE_3__ HeadlineParsedText ;


 int DatumGetInt32 (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int FunctionCall1 (int *,int ) ;
 int FunctionCall2 (int *,int ,int ) ;
 int FunctionCall3 (int *,int ,int ,int ) ;
 int Int32GetDatum (int) ;
 int LexizeAddLemm (int *,int,char*,int) ;
 int * LexizeExec (int *,int **) ;
 int LexizeInit (int *,TYPE_2__*) ;
 int MAXSTRLEN ;
 int NOTICE ;
 int PointerGetDatum (void*) ;
 int addHLParsedLex (TYPE_3__*,int ,int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int) ;
 int errmsg (char*) ;
 TYPE_2__* lookup_ts_config_cache (int ) ;
 TYPE_1__* lookup_ts_parser_cache (int ) ;

void
hlparsetext(Oid cfgId, HeadlineParsedText *prs, TSQuery query, char *buf, int buflen)
{
 int type,
    lenlemm;
 char *lemm = ((void*)0);
 LexizeData ldata;
 TSLexeme *norms;
 ParsedLex *lexs;
 TSConfigCacheEntry *cfg;
 TSParserCacheEntry *prsobj;
 void *prsdata;

 cfg = lookup_ts_config_cache(cfgId);
 prsobj = lookup_ts_parser_cache(cfg->prsId);

 prsdata = (void *) DatumGetPointer(FunctionCall2(&(prsobj->prsstart),
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

  do
  {
   if ((norms = LexizeExec(&ldata, &lexs)) != ((void*)0))
   {
    prs->vectorpos++;
    addHLParsedLex(prs, query, lexs, norms);
   }
   else
    addHLParsedLex(prs, query, lexs, ((void*)0));
  } while (norms);

 } while (type > 0);

 FunctionCall1(&(prsobj->prsend), PointerGetDatum(prsdata));
}
