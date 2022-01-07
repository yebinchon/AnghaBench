
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HeapTuple ;


 int HeapTupleIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCacheAttName (int ,char const*) ;
 int heap_copytuple (int ) ;

HeapTuple
SearchSysCacheCopyAttName(Oid relid, const char *attname)
{
 HeapTuple tuple,
    newtuple;

 tuple = SearchSysCacheAttName(relid, attname);
 if (!HeapTupleIsValid(tuple))
  return tuple;
 newtuple = heap_copytuple(tuple);
 ReleaseSysCache(tuple);
 return newtuple;
}
