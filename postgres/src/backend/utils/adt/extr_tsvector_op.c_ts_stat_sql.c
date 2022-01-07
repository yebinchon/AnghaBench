
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int text ;
struct TYPE_12__ {int natts; } ;
struct TYPE_11__ {TYPE_6__* tupdesc; int * vals; } ;
struct TYPE_10__ {int maxdepth; int weight; } ;
typedef TYPE_1__ TSVectorStat ;
typedef int * SPIPlanPtr ;
typedef int * Portal ;
typedef int MemoryContext ;
typedef int Datum ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int IsBinaryCoercible (int ,int ) ;
 TYPE_1__* MemoryContextAllocZero (int ,int) ;
 int SPI_cursor_close (int *) ;
 int SPI_cursor_fetch (int *,int,int) ;
 int * SPI_cursor_open (int *,int *,int *,int *,int) ;
 int SPI_freeplan (int *) ;
 int SPI_freetuptable (TYPE_5__*) ;
 int SPI_getbinval (int ,TYPE_6__*,int,int*) ;
 int SPI_gettypeid (TYPE_6__*,int) ;
 int * SPI_prepare (char*,int ,int *) ;
 scalar_t__ SPI_processed ;
 TYPE_5__* SPI_tuptable ;
 int TSVECTOROID ;
 char* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int elog (int ,char*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pfree (char*) ;
 int pg_mblen (char*) ;
 char* text_to_cstring (int *) ;
 TYPE_1__* ts_accum (int ,TYPE_1__*,int ) ;

__attribute__((used)) static TSVectorStat *
ts_stat_sql(MemoryContext persistentContext, text *txt, text *ws)
{
 char *query = text_to_cstring(txt);
 TSVectorStat *stat;
 bool isnull;
 Portal portal;
 SPIPlanPtr plan;

 if ((plan = SPI_prepare(query, 0, ((void*)0))) == ((void*)0))

  elog(ERROR, "SPI_prepare(\"%s\") failed", query);

 if ((portal = SPI_cursor_open(((void*)0), plan, ((void*)0), ((void*)0), 1)) == ((void*)0))

  elog(ERROR, "SPI_cursor_open(\"%s\") failed", query);

 SPI_cursor_fetch(portal, 1, 100);

 if (SPI_tuptable == ((void*)0) ||
  SPI_tuptable->tupdesc->natts != 1 ||
  !IsBinaryCoercible(SPI_gettypeid(SPI_tuptable->tupdesc, 1),
         TSVECTOROID))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("ts_stat query must return one tsvector column")));

 stat = MemoryContextAllocZero(persistentContext, sizeof(TSVectorStat));
 stat->maxdepth = 1;

 if (ws)
 {
  char *buf;

  buf = VARDATA_ANY(ws);
  while (buf - VARDATA_ANY(ws) < VARSIZE_ANY_EXHDR(ws))
  {
   if (pg_mblen(buf) == 1)
   {
    switch (*buf)
    {
     case 'A':
     case 'a':
      stat->weight |= 1 << 3;
      break;
     case 'B':
     case 'b':
      stat->weight |= 1 << 2;
      break;
     case 'C':
     case 'c':
      stat->weight |= 1 << 1;
      break;
     case 'D':
     case 'd':
      stat->weight |= 1;
      break;
     default:
      stat->weight |= 0;
    }
   }
   buf += pg_mblen(buf);
  }
 }

 while (SPI_processed > 0)
 {
  uint64 i;

  for (i = 0; i < SPI_processed; i++)
  {
   Datum data = SPI_getbinval(SPI_tuptable->vals[i], SPI_tuptable->tupdesc, 1, &isnull);

   if (!isnull)
    stat = ts_accum(persistentContext, stat, data);
  }

  SPI_freetuptable(SPI_tuptable);
  SPI_cursor_fetch(portal, 1, 100);
 }

 SPI_freetuptable(SPI_tuptable);
 SPI_cursor_close(portal);
 SPI_freeplan(plan);
 pfree(query);

 return stat;
}
