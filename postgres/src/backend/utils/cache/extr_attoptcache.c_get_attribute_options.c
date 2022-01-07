
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int key ;
typedef int bytea ;
struct TYPE_5__ {int * opts; } ;
struct TYPE_4__ {int attnum; int attrelid; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;
typedef int AttributeOpts ;
typedef TYPE_1__ AttoptCacheKey ;
typedef TYPE_2__ AttoptCacheEntry ;


 int ATTNUM ;
 int Anum_pg_attribute_attoptions ;
 int AttoptCacheHash ;
 int CacheMemoryContext ;
 int HASH_ENTER ;
 int HASH_FIND ;
 int HeapTupleIsValid (int ) ;
 int InitializeAttoptCache () ;
 int Int16GetDatum (int) ;
 int * MemoryContextAlloc (int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int VARSIZE (int *) ;
 int * attribute_reloptions (int ,int) ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 int memcpy (int *,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int * palloc (int ) ;

AttributeOpts *
get_attribute_options(Oid attrelid, int attnum)
{
 AttoptCacheKey key;
 AttoptCacheEntry *attopt;
 AttributeOpts *result;
 HeapTuple tp;


 if (!AttoptCacheHash)
  InitializeAttoptCache();
 memset(&key, 0, sizeof(key));
 key.attrelid = attrelid;
 key.attnum = attnum;
 attopt =
  (AttoptCacheEntry *) hash_search(AttoptCacheHash,
           (void *) &key,
           HASH_FIND,
           ((void*)0));


 if (!attopt)
 {
  AttributeOpts *opts;

  tp = SearchSysCache2(ATTNUM,
        ObjectIdGetDatum(attrelid),
        Int16GetDatum(attnum));






  if (!HeapTupleIsValid(tp))
   opts = ((void*)0);
  else
  {
   Datum datum;
   bool isNull;

   datum = SysCacheGetAttr(ATTNUM,
         tp,
         Anum_pg_attribute_attoptions,
         &isNull);
   if (isNull)
    opts = ((void*)0);
   else
   {
    bytea *bytea_opts = attribute_reloptions(datum, 0);

    opts = MemoryContextAlloc(CacheMemoryContext,
            VARSIZE(bytea_opts));
    memcpy(opts, bytea_opts, VARSIZE(bytea_opts));
   }
   ReleaseSysCache(tp);
  }





  attopt = (AttoptCacheEntry *) hash_search(AttoptCacheHash,
              (void *) &key,
              HASH_ENTER,
              ((void*)0));
  attopt->opts = opts;
 }


 if (attopt->opts == ((void*)0))
  return ((void*)0);
 result = palloc(VARSIZE(attopt->opts));
 memcpy(result, attopt->opts, VARSIZE(attopt->opts));
 return result;
}
