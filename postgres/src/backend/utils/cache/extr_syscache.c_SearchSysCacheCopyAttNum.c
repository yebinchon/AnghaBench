
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int Oid ;
typedef int * HeapTuple ;


 int HeapTupleIsValid (int *) ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCacheAttNum (int ,int ) ;
 int * heap_copytuple (int *) ;

HeapTuple
SearchSysCacheCopyAttNum(Oid relid, int16 attnum)
{
 HeapTuple tuple,
    newtuple;

 tuple = SearchSysCacheAttNum(relid, attnum);
 if (!HeapTupleIsValid(tuple))
  return ((void*)0);
 newtuple = heap_copytuple(tuple);
 ReleaseSysCache(tuple);
 return newtuple;
}
