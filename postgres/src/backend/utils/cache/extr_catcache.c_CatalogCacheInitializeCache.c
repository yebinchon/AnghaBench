
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_10__ {int relisshared; } ;
struct TYPE_9__ {int cc_nkeys; scalar_t__* cc_keyno; int cc_tupdesc; int cc_relname; TYPE_1__* cc_skey; int * cc_fastequal; int * cc_hashfunc; int cc_relisshared; int cc_reloid; } ;
struct TYPE_8__ {int attnotnull; int atttypid; } ;
struct TYPE_7__ {scalar_t__ sk_attno; int sk_collation; int sk_subtype; int sk_strategy; int sk_func; } ;
typedef int Relation ;
typedef int RegProcedure ;
typedef int Oid ;
typedef int * MemoryContext ;
typedef TYPE_2__* Form_pg_attribute ;
typedef TYPE_3__ CatCache ;


 int AccessShareLock ;
 int Assert (int ) ;
 int BTEqualStrategyNumber ;
 int CACHE_elog (int ,char*,int ,int,...) ;
 int C_COLLATION_OID ;
 int * CacheMemoryContext ;
 int CatalogCacheInitializeCache_DEBUG1 ;
 int CatalogCacheInitializeCache_DEBUG2 ;
 int CreateTupleDescCopyConstr (int ) ;
 int DEBUG2 ;
 int FATAL ;
 int GetCCHashEqFuncs (int ,int *,int *,int *) ;
 int InvalidOid ;
 int * MemoryContextSwitchTo (int *) ;
 int OIDOID ;
 int RelationGetDescr (int ) ;
 TYPE_5__* RelationGetForm (int ) ;
 int RelationGetRelationName (int ) ;
 TYPE_2__* TupleDescAttr (int ,scalar_t__) ;
 int elog (int ,char*) ;
 int fmgr_info_cxt (int ,int *,int *) ;
 int pstrdup (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
CatalogCacheInitializeCache(CatCache *cache)
{
 Relation relation;
 MemoryContext oldcxt;
 TupleDesc tupdesc;
 int i;

 CatalogCacheInitializeCache_DEBUG1;

 relation = table_open(cache->cc_reloid, AccessShareLock);





 Assert(CacheMemoryContext != ((void*)0));

 oldcxt = MemoryContextSwitchTo(CacheMemoryContext);




 tupdesc = CreateTupleDescCopyConstr(RelationGetDescr(relation));





 cache->cc_relname = pstrdup(RelationGetRelationName(relation));
 cache->cc_relisshared = RelationGetForm(relation)->relisshared;




 MemoryContextSwitchTo(oldcxt);

 table_close(relation, AccessShareLock);

 CACHE_elog(DEBUG2, "CatalogCacheInitializeCache: %s, %d keys",
      cache->cc_relname, cache->cc_nkeys);




 for (i = 0; i < cache->cc_nkeys; ++i)
 {
  Oid keytype;
  RegProcedure eqfunc;

  CatalogCacheInitializeCache_DEBUG2;

  if (cache->cc_keyno[i] > 0)
  {
   Form_pg_attribute attr = TupleDescAttr(tupdesc,
               cache->cc_keyno[i] - 1);

   keytype = attr->atttypid;

   Assert(attr->attnotnull);
  }
  else
  {
   if (cache->cc_keyno[i] < 0)
    elog(FATAL, "sys attributes are not supported in caches");
   keytype = OIDOID;
  }

  GetCCHashEqFuncs(keytype,
       &cache->cc_hashfunc[i],
       &eqfunc,
       &cache->cc_fastequal[i]);





  fmgr_info_cxt(eqfunc,
       &cache->cc_skey[i].sk_func,
       CacheMemoryContext);


  cache->cc_skey[i].sk_attno = cache->cc_keyno[i];


  cache->cc_skey[i].sk_strategy = BTEqualStrategyNumber;
  cache->cc_skey[i].sk_subtype = InvalidOid;

  cache->cc_skey[i].sk_collation = C_COLLATION_OID;

  CACHE_elog(DEBUG2, "CatalogCacheInitializeCache %s %d %p",
       cache->cc_relname, i, cache);
 }




 cache->cc_tupdesc = tupdesc;
}
