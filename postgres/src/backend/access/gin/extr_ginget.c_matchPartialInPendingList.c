
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_8__ {scalar_t__ queryCategory; int attnum; int extra_data; int strategy; int queryKey; } ;
struct TYPE_7__ {int * supportCollation; int * comparePartialFn; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_1__ GinState ;
typedef TYPE_2__* GinScanEntry ;
typedef scalar_t__ GinNullCategory ;
typedef int Datum ;


 scalar_t__ DatumGetInt32 (int ) ;
 int FunctionCall4Coll (int *,int ,int ,int ,int ,int ) ;
 scalar_t__ GIN_CAT_NORM_KEY ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int) ;
 int PointerGetDatum (int ) ;
 int UInt16GetDatum (int ) ;
 int gintuple_get_attrnum (TYPE_1__*,scalar_t__) ;
 int gintuple_get_key (TYPE_1__*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static bool
matchPartialInPendingList(GinState *ginstate, Page page,
        OffsetNumber off, OffsetNumber maxoff,
        GinScanEntry entry,
        Datum *datum, GinNullCategory *category,
        bool *datumExtracted)
{
 IndexTuple itup;
 int32 cmp;


 if (entry->queryCategory != GIN_CAT_NORM_KEY)
  return 0;

 while (off < maxoff)
 {
  itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, off));

  if (gintuple_get_attrnum(ginstate, itup) != entry->attnum)
   return 0;

  if (datumExtracted[off - 1] == 0)
  {
   datum[off - 1] = gintuple_get_key(ginstate, itup,
             &category[off - 1]);
   datumExtracted[off - 1] = 1;
  }


  if (category[off - 1] != GIN_CAT_NORM_KEY)
   return 0;
  cmp = DatumGetInt32(FunctionCall4Coll(&ginstate->comparePartialFn[entry->attnum - 1],
             ginstate->supportCollation[entry->attnum - 1],
             entry->queryKey,
             datum[off - 1],
             UInt16GetDatum(entry->strategy),
             PointerGetDatum(entry->extra_data)));
  if (cmp == 0)
   return 1;
  else if (cmp > 0)
   return 0;

  off++;
 }

 return 0;
}
