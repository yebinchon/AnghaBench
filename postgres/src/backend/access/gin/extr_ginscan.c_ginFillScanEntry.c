
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32 ;
typedef scalar_t__ int32 ;
struct TYPE_7__ {int isPartialMatch; scalar_t__ strategy; scalar_t__ searchMode; scalar_t__ attnum; int isFinished; int reduceResult; int offset; scalar_t__ nlist; int * list; int * matchResult; int * matchIterator; int * matchBitmap; int curItem; int buffer; int * extra_data; int queryCategory; int queryKey; } ;
struct TYPE_6__ {size_t totalentries; int allocentries; TYPE_2__** entries; int ginstate; } ;
typedef scalar_t__ StrategyNumber ;
typedef int * Pointer ;
typedef scalar_t__ OffsetNumber ;
typedef int GinState ;
typedef TYPE_1__* GinScanOpaque ;
typedef int GinScanEntryData ;
typedef TYPE_2__* GinScanEntry ;
typedef int GinNullCategory ;
typedef int Datum ;


 int InvalidBuffer ;
 int InvalidOffsetNumber ;
 int ItemPointerSetMin (int *) ;
 scalar_t__ ginCompareEntries (int *,scalar_t__,int ,int ,int ,int ) ;
 int palloc (int) ;
 scalar_t__ repalloc (TYPE_2__**,int) ;

__attribute__((used)) static GinScanEntry
ginFillScanEntry(GinScanOpaque so, OffsetNumber attnum,
     StrategyNumber strategy, int32 searchMode,
     Datum queryKey, GinNullCategory queryCategory,
     bool isPartialMatch, Pointer extra_data)
{
 GinState *ginstate = &so->ginstate;
 GinScanEntry scanEntry;
 uint32 i;







 if (extra_data == ((void*)0))
 {
  for (i = 0; i < so->totalentries; i++)
  {
   GinScanEntry prevEntry = so->entries[i];

   if (prevEntry->extra_data == ((void*)0) &&
    prevEntry->isPartialMatch == isPartialMatch &&
    prevEntry->strategy == strategy &&
    prevEntry->searchMode == searchMode &&
    prevEntry->attnum == attnum &&
    ginCompareEntries(ginstate, attnum,
          prevEntry->queryKey,
          prevEntry->queryCategory,
          queryKey,
          queryCategory) == 0)
   {

    return prevEntry;
   }
  }
 }


 scanEntry = (GinScanEntry) palloc(sizeof(GinScanEntryData));
 scanEntry->queryKey = queryKey;
 scanEntry->queryCategory = queryCategory;
 scanEntry->isPartialMatch = isPartialMatch;
 scanEntry->extra_data = extra_data;
 scanEntry->strategy = strategy;
 scanEntry->searchMode = searchMode;
 scanEntry->attnum = attnum;

 scanEntry->buffer = InvalidBuffer;
 ItemPointerSetMin(&scanEntry->curItem);
 scanEntry->matchBitmap = ((void*)0);
 scanEntry->matchIterator = ((void*)0);
 scanEntry->matchResult = ((void*)0);
 scanEntry->list = ((void*)0);
 scanEntry->nlist = 0;
 scanEntry->offset = InvalidOffsetNumber;
 scanEntry->isFinished = 0;
 scanEntry->reduceResult = 0;


 if (so->totalentries >= so->allocentries)
 {
  so->allocentries *= 2;
  so->entries = (GinScanEntry *)
   repalloc(so->entries, so->allocentries * sizeof(GinScanEntry));
 }
 so->entries[so->totalentries++] = scanEntry;

 return scanEntry;
}
