
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
typedef int int32 ;
struct TYPE_10__ {int nentries; int nuserentries; int searchMode; int attnum; int curItemMatches; int recheckCurItem; int isFinished; int * scanEntry; int * additionalEntries; int * requiredEntries; scalar_t__ nadditional; scalar_t__ nrequired; int curItem; int strategy; int ** extra_data; int * queryCategories; scalar_t__* queryValues; scalar_t__ query; int * entryRes; } ;
struct TYPE_8__ {scalar_t__* canPartialMatch; } ;
struct TYPE_9__ {TYPE_1__ ginstate; int nkeys; TYPE_3__* keys; } ;
typedef int StrategyNumber ;
typedef int * Pointer ;
typedef int OffsetNumber ;
typedef int GinTernaryValue ;
typedef TYPE_1__ GinState ;
typedef TYPE_2__* GinScanOpaque ;
typedef TYPE_3__* GinScanKey ;
typedef int GinScanEntry ;
typedef int GinNullCategory ;
typedef scalar_t__ Datum ;


 int ERROR ;
 int GIN_CAT_EMPTY_ITEM ;
 int GIN_CAT_EMPTY_QUERY ;

 int GIN_SEARCH_MODE_DEFAULT ;


 int InvalidStrategy ;
 int ItemPointerSetMin (int *) ;
 int elog (int ,char*,int) ;
 int ginFillScanEntry (TYPE_2__*,int,int ,int,scalar_t__,int ,int,int *) ;
 int ginInitConsistentFunction (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static void
ginFillScanKey(GinScanOpaque so, OffsetNumber attnum,
      StrategyNumber strategy, int32 searchMode,
      Datum query, uint32 nQueryValues,
      Datum *queryValues, GinNullCategory *queryCategories,
      bool *partial_matches, Pointer *extra_data)
{
 GinScanKey key = &(so->keys[so->nkeys++]);
 GinState *ginstate = &so->ginstate;
 uint32 nUserQueryValues = nQueryValues;
 uint32 i;


 if (searchMode != GIN_SEARCH_MODE_DEFAULT)
  nQueryValues++;
 key->nentries = nQueryValues;
 key->nuserentries = nUserQueryValues;

 key->scanEntry = (GinScanEntry *) palloc(sizeof(GinScanEntry) * nQueryValues);
 key->entryRes = (GinTernaryValue *) palloc0(sizeof(GinTernaryValue) * nQueryValues);

 key->query = query;
 key->queryValues = queryValues;
 key->queryCategories = queryCategories;
 key->extra_data = extra_data;
 key->strategy = strategy;
 key->searchMode = searchMode;
 key->attnum = attnum;

 ItemPointerSetMin(&key->curItem);
 key->curItemMatches = 0;
 key->recheckCurItem = 0;
 key->isFinished = 0;
 key->nrequired = 0;
 key->nadditional = 0;
 key->requiredEntries = ((void*)0);
 key->additionalEntries = ((void*)0);

 ginInitConsistentFunction(ginstate, key);

 for (i = 0; i < nQueryValues; i++)
 {
  Datum queryKey;
  GinNullCategory queryCategory;
  bool isPartialMatch;
  Pointer this_extra;

  if (i < nUserQueryValues)
  {

   queryKey = queryValues[i];
   queryCategory = queryCategories[i];
   isPartialMatch =
    (ginstate->canPartialMatch[attnum - 1] && partial_matches)
    ? partial_matches[i] : 0;
   this_extra = (extra_data) ? extra_data[i] : ((void*)0);
  }
  else
  {

   queryKey = (Datum) 0;
   switch (searchMode)
   {
    case 128:
     queryCategory = GIN_CAT_EMPTY_ITEM;
     break;
    case 130:
     queryCategory = GIN_CAT_EMPTY_QUERY;
     break;
    case 129:
     queryCategory = GIN_CAT_EMPTY_QUERY;
     break;
    default:
     elog(ERROR, "unexpected searchMode: %d", searchMode);
     queryCategory = 0;
     break;
   }
   isPartialMatch = 0;
   this_extra = ((void*)0);
   strategy = InvalidStrategy;
  }

  key->scanEntry[i] = ginFillScanEntry(so, attnum,
            strategy, searchMode,
            queryKey, queryCategory,
            isPartialMatch, this_extra);
 }
}
