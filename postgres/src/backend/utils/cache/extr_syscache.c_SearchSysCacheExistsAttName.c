
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HeapTuple ;


 int HeapTupleIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCacheAttName (int ,char const*) ;

bool
SearchSysCacheExistsAttName(Oid relid, const char *attname)
{
 HeapTuple tuple;

 tuple = SearchSysCacheAttName(relid, attname);
 if (!HeapTupleIsValid(tuple))
  return 0;
 ReleaseSysCache(tuple);
 return 1;
}
