
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cc_tupdesc; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;
typedef int AttrNumber ;


 int Assert (int) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache (int,int ,int ,int ,int ) ;
 TYPE_1__** SysCache ;
 int heap_getattr (int ,int ,int ,int*) ;

Oid
GetSysCacheOid(int cacheId,
      AttrNumber oidcol,
      Datum key1,
      Datum key2,
      Datum key3,
      Datum key4)
{
 HeapTuple tuple;
 bool isNull;
 Oid result;

 tuple = SearchSysCache(cacheId, key1, key2, key3, key4);
 if (!HeapTupleIsValid(tuple))
  return InvalidOid;
 result = heap_getattr(tuple, oidcol,
        SysCache[cacheId]->cc_tupdesc,
        &isNull);
 Assert(!isNull);
 ReleaseSysCache(tuple);
 return result;
}
