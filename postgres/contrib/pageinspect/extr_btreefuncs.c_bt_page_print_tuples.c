
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int attinmeta; } ;
struct TYPE_7__ {int t_info; int t_tid; } ;
typedef int Page ;
typedef char OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__* IndexTuple ;
typedef int HeapTuple ;
typedef TYPE_2__ FuncCallContext ;
typedef int Datum ;


 int BuildTupleFromCStrings (int ,char**) ;
 int ERROR ;
 int HeapTupleGetDatum (int ) ;
 int IndexInfoFindDataOffset (int ) ;
 scalar_t__ IndexTupleHasNulls (TYPE_1__*) ;
 scalar_t__ IndexTupleHasVarwidths (TYPE_1__*) ;
 int IndexTupleSize (TYPE_1__*) ;
 int ItemIdIsValid (int ) ;
 int ItemPointerGetBlockNumberNoCheck (int *) ;
 int ItemPointerGetOffsetNumberNoCheck (int *) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,char) ;
 int elog (int ,char*) ;
 char* palloc0 (int) ;
 char* psprintf (char*,char,...) ;
 int sprintf (char*,char*,char) ;

__attribute__((used)) static Datum
bt_page_print_tuples(FuncCallContext *fctx, Page page, OffsetNumber offset)
{
 char *values[6];
 HeapTuple tuple;
 ItemId id;
 IndexTuple itup;
 int j;
 int off;
 int dlen;
 char *dump;
 char *ptr;

 id = PageGetItemId(page, offset);

 if (!ItemIdIsValid(id))
  elog(ERROR, "invalid ItemId");

 itup = (IndexTuple) PageGetItem(page, id);

 j = 0;
 values[j++] = psprintf("%d", offset);
 values[j++] = psprintf("(%u,%u)",
         ItemPointerGetBlockNumberNoCheck(&itup->t_tid),
         ItemPointerGetOffsetNumberNoCheck(&itup->t_tid));
 values[j++] = psprintf("%d", (int) IndexTupleSize(itup));
 values[j++] = psprintf("%c", IndexTupleHasNulls(itup) ? 't' : 'f');
 values[j++] = psprintf("%c", IndexTupleHasVarwidths(itup) ? 't' : 'f');

 ptr = (char *) itup + IndexInfoFindDataOffset(itup->t_info);
 dlen = IndexTupleSize(itup) - IndexInfoFindDataOffset(itup->t_info);
 dump = palloc0(dlen * 3 + 1);
 values[j] = dump;
 for (off = 0; off < dlen; off++)
 {
  if (off > 0)
   *dump++ = ' ';
  sprintf(dump, "%02x", *(ptr + off) & 0xff);
  dump += 2;
 }

 tuple = BuildTupleFromCStrings(fctx->attinmeta, values);

 return HeapTupleGetDatum(tuple);
}
