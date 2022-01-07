
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bytea ;
typedef int TableSpaceOpts ;
struct TYPE_3__ {int * opts; } ;
typedef TYPE_1__ TableSpaceCacheEntry ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_tablespace_spcoptions ;
 int CacheMemoryContext ;
 int HASH_ENTER ;
 int HASH_FIND ;
 int HeapTupleIsValid (int ) ;
 int InitializeTableSpaceCache () ;
 scalar_t__ InvalidOid ;
 int * MemoryContextAlloc (int ,int ) ;
 scalar_t__ MyDatabaseTableSpace ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int TABLESPACEOID ;
 int TableSpaceCacheHash ;
 int VARSIZE (int *) ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 int memcpy (int *,int *,int ) ;
 int * tablespace_reloptions (int ,int) ;

__attribute__((used)) static TableSpaceCacheEntry *
get_tablespace(Oid spcid)
{
 TableSpaceCacheEntry *spc;
 HeapTuple tp;
 TableSpaceOpts *opts;





 if (spcid == InvalidOid)
  spcid = MyDatabaseTableSpace;


 if (!TableSpaceCacheHash)
  InitializeTableSpaceCache();
 spc = (TableSpaceCacheEntry *) hash_search(TableSpaceCacheHash,
              (void *) &spcid,
              HASH_FIND,
              ((void*)0));
 if (spc)
  return spc;







 tp = SearchSysCache1(TABLESPACEOID, ObjectIdGetDatum(spcid));
 if (!HeapTupleIsValid(tp))
  opts = ((void*)0);
 else
 {
  Datum datum;
  bool isNull;

  datum = SysCacheGetAttr(TABLESPACEOID,
        tp,
        Anum_pg_tablespace_spcoptions,
        &isNull);
  if (isNull)
   opts = ((void*)0);
  else
  {
   bytea *bytea_opts = tablespace_reloptions(datum, 0);

   opts = MemoryContextAlloc(CacheMemoryContext, VARSIZE(bytea_opts));
   memcpy(opts, bytea_opts, VARSIZE(bytea_opts));
  }
  ReleaseSysCache(tp);
 }






 spc = (TableSpaceCacheEntry *) hash_search(TableSpaceCacheHash,
              (void *) &spcid,
              HASH_ENTER,
              ((void*)0));
 spc->opts = opts;
 return spc;
}
