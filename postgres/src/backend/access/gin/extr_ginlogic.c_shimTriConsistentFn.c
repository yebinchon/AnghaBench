
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nentries; int* entryRes; int recheckCurItem; } ;
typedef int GinTernaryValue ;
typedef TYPE_1__* GinScanKey ;


 scalar_t__ GIN_FALSE ;
 int GIN_MAYBE ;
 int GIN_TRUE ;
 int MAX_MAYBE_ENTRIES ;
 int directBoolConsistentFn (TYPE_1__*) ;

__attribute__((used)) static GinTernaryValue
shimTriConsistentFn(GinScanKey key)
{
 int nmaybe;
 int maybeEntries[MAX_MAYBE_ENTRIES];
 int i;
 bool boolResult;
 bool recheck = 0;
 GinTernaryValue curResult;






 nmaybe = 0;
 for (i = 0; i < key->nentries; i++)
 {
  if (key->entryRes[i] == GIN_MAYBE)
  {
   if (nmaybe >= MAX_MAYBE_ENTRIES)
    return GIN_MAYBE;
   maybeEntries[nmaybe++] = i;
  }
 }





 if (nmaybe == 0)
  return directBoolConsistentFn(key);


 for (i = 0; i < nmaybe; i++)
  key->entryRes[maybeEntries[i]] = GIN_FALSE;
 curResult = directBoolConsistentFn(key);

 for (;;)
 {

  for (i = 0; i < nmaybe; i++)
  {
   if (key->entryRes[maybeEntries[i]] == GIN_FALSE)
   {
    key->entryRes[maybeEntries[i]] = GIN_TRUE;
    break;
   }
   else
    key->entryRes[maybeEntries[i]] = GIN_FALSE;
  }
  if (i == nmaybe)
   break;

  boolResult = directBoolConsistentFn(key);
  recheck |= key->recheckCurItem;

  if (curResult != boolResult)
   return GIN_MAYBE;
 }


 if (curResult == GIN_TRUE && recheck)
  curResult = GIN_MAYBE;

 return curResult;
}
