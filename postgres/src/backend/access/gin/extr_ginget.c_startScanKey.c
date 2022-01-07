
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int curItemMatches; int recheckCurItem; int isFinished; int nentries; scalar_t__ (* triConsistentFn ) (TYPE_2__*) ;int nrequired; int nadditional; int * scanEntry; int * requiredEntries; int * additionalEntries; scalar_t__* entryRes; int curItem; } ;
struct TYPE_7__ {int keyCtx; int tempCtx; } ;
typedef int MemoryContext ;
typedef int GinState ;
typedef TYPE_1__* GinScanOpaque ;
typedef TYPE_2__* GinScanKey ;
typedef int GinScanEntry ;


 int CurrentMemoryContext ;
 scalar_t__ GIN_FALSE ;
 scalar_t__ GIN_MAYBE ;
 int ItemPointerSetMin (int *) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int entryIndexByFrequencyCmp ;
 void* palloc (int) ;
 int qsort_arg (int*,int,int,int ,TYPE_2__*) ;
 scalar_t__ stub1 (TYPE_2__*) ;

__attribute__((used)) static void
startScanKey(GinState *ginstate, GinScanOpaque so, GinScanKey key)
{
 MemoryContext oldCtx = CurrentMemoryContext;
 int i;
 int j;
 int *entryIndexes;

 ItemPointerSetMin(&key->curItem);
 key->curItemMatches = 0;
 key->recheckCurItem = 0;
 key->isFinished = 0;
 if (key->nentries > 1)
 {
  MemoryContextSwitchTo(so->tempCtx);

  entryIndexes = (int *) palloc(sizeof(int) * key->nentries);
  for (i = 0; i < key->nentries; i++)
   entryIndexes[i] = i;
  qsort_arg(entryIndexes, key->nentries, sizeof(int),
      entryIndexByFrequencyCmp, key);

  for (i = 0; i < key->nentries - 1; i++)
  {

   for (j = 0; j <= i; j++)
    key->entryRes[entryIndexes[j]] = GIN_FALSE;
   for (j = i + 1; j < key->nentries; j++)
    key->entryRes[entryIndexes[j]] = GIN_MAYBE;

   if (key->triConsistentFn(key) == GIN_FALSE)
    break;
  }


  MemoryContextSwitchTo(so->keyCtx);

  key->nrequired = i + 1;
  key->nadditional = key->nentries - key->nrequired;
  key->requiredEntries = palloc(key->nrequired * sizeof(GinScanEntry));
  key->additionalEntries = palloc(key->nadditional * sizeof(GinScanEntry));

  j = 0;
  for (i = 0; i < key->nrequired; i++)
   key->requiredEntries[i] = key->scanEntry[entryIndexes[j++]];
  for (i = 0; i < key->nadditional; i++)
   key->additionalEntries[i] = key->scanEntry[entryIndexes[j++]];


  MemoryContextReset(so->tempCtx);
 }
 else
 {
  MemoryContextSwitchTo(so->keyCtx);

  key->nrequired = 1;
  key->nadditional = 0;
  key->requiredEntries = palloc(1 * sizeof(GinScanEntry));
  key->requiredEntries[0] = key->scanEntry[0];
 }
 MemoryContextSwitchTo(oldCtx);
}
