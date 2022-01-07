
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HeapTuple ;


 int CacheInvalidateRelcacheByTuple (int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PrepareInvalidationState () ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;

void
CacheInvalidateRelcacheByRelid(Oid relid)
{
 HeapTuple tup;

 PrepareInvalidationState();

 tup = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for relation %u", relid);
 CacheInvalidateRelcacheByTuple(tup);
 ReleaseSysCache(tup);
}
