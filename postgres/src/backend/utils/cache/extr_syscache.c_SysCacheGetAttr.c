
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* cc_tupdesc; } ;
typedef int HeapTuple ;
typedef int Datum ;
typedef int AttrNumber ;


 int Assert (int ) ;
 int ERROR ;
 int InitCatCachePhase2 (TYPE_1__*,int) ;
 int PointerIsValid (TYPE_1__*) ;
 TYPE_1__** SysCache ;
 int SysCacheSize ;
 int elog (int ,char*,int) ;
 int heap_getattr (int ,int ,TYPE_1__*,int*) ;

Datum
SysCacheGetAttr(int cacheId, HeapTuple tup,
    AttrNumber attributeNumber,
    bool *isNull)
{






 if (cacheId < 0 || cacheId >= SysCacheSize ||
  !PointerIsValid(SysCache[cacheId]))
  elog(ERROR, "invalid cache ID: %d", cacheId);
 if (!PointerIsValid(SysCache[cacheId]->cc_tupdesc))
 {
  InitCatCachePhase2(SysCache[cacheId], 0);
  Assert(PointerIsValid(SysCache[cacheId]->cc_tupdesc));
 }

 return heap_getattr(tup, attributeNumber,
      SysCache[cacheId]->cc_tupdesc,
      isNull);
}
