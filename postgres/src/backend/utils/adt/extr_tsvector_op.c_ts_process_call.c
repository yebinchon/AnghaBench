
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int attinmeta; scalar_t__ user_fctx; } ;
struct TYPE_5__ {int lenlexeme; int ndoc; int nentry; int lexeme; } ;
typedef int TSVectorStat ;
typedef TYPE_1__ StatEntry ;
typedef int HeapTuple ;
typedef TYPE_2__ FuncCallContext ;
typedef int Datum ;


 int BuildTupleFromCStrings (int ,char**) ;
 int HeapTupleGetDatum (int ) ;
 int memcpy (char*,int ,int) ;
 char* palloc (int) ;
 int pfree (char*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* walkStatEntryTree (int *) ;

__attribute__((used)) static Datum
ts_process_call(FuncCallContext *funcctx)
{
 TSVectorStat *st;
 StatEntry *entry;

 st = (TSVectorStat *) funcctx->user_fctx;

 entry = walkStatEntryTree(st);

 if (entry != ((void*)0))
 {
  Datum result;
  char *values[3];
  char ndoc[16];
  char nentry[16];
  HeapTuple tuple;

  values[0] = palloc(entry->lenlexeme + 1);
  memcpy(values[0], entry->lexeme, entry->lenlexeme);
  (values[0])[entry->lenlexeme] = '\0';
  sprintf(ndoc, "%d", entry->ndoc);
  values[1] = ndoc;
  sprintf(nentry, "%d", entry->nentry);
  values[2] = nentry;

  tuple = BuildTupleFromCStrings(funcctx->attinmeta, values);
  result = HeapTupleGetDatum(tuple);

  pfree(values[0]);


  entry->ndoc = 0;

  return result;
 }

 return (Datum) 0;
}
