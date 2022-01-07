
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cc_nkeys; } ;
typedef int HeapTuple ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ PointerIsValid (TYPE_1__*) ;
 int SearchCatCache4 (TYPE_1__*,int ,int ,int ,int ) ;
 TYPE_1__** SysCache ;
 int SysCacheSize ;

HeapTuple
SearchSysCache4(int cacheId,
    Datum key1, Datum key2, Datum key3, Datum key4)
{
 Assert(cacheId >= 0 && cacheId < SysCacheSize &&
     PointerIsValid(SysCache[cacheId]));
 Assert(SysCache[cacheId]->cc_nkeys == 4);

 return SearchCatCache4(SysCache[cacheId], key1, key2, key3, key4);
}
