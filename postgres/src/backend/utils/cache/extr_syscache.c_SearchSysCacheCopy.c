
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HeapTuple ;
typedef int Datum ;


 int HeapTupleIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache (int,int ,int ,int ,int ) ;
 int heap_copytuple (int ) ;

HeapTuple
SearchSysCacheCopy(int cacheId,
       Datum key1,
       Datum key2,
       Datum key3,
       Datum key4)
{
 HeapTuple tuple,
    newtuple;

 tuple = SearchSysCache(cacheId, key1, key2, key3, key4);
 if (!HeapTupleIsValid(tuple))
  return tuple;
 newtuple = heap_copytuple(tuple);
 ReleaseSysCache(tuple);
 return newtuple;
}
