
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dlist_head ;
typedef scalar_t__ TupleDesc ;
struct TYPE_6__ {int id; char* cc_relname; int cc_relisshared; int cc_nbuckets; int cc_nkeys; int* cc_keyno; int cc_next; scalar_t__ cc_ntup; scalar_t__ cc_tupdesc; void* cc_indexoid; void* cc_reloid; int cc_bucket; } ;
struct TYPE_5__ {int ch_caches; scalar_t__ ch_ntup; } ;
typedef void* Oid ;
typedef int MemoryContext ;
typedef TYPE_1__ CatCacheHeader ;
typedef TYPE_2__ CatCache ;


 int Assert (int) ;
 scalar_t__ CACHELINEALIGN (int ) ;
 TYPE_1__* CacheHdr ;
 int CacheMemoryContext ;
 int CatCachePrintStats ;
 int CreateCacheMemoryContext () ;
 int InitCatCache_DEBUG2 ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CACHE_LINE_SIZE ;
 int on_proc_exit (int ,int ) ;
 scalar_t__ palloc (int) ;
 int palloc0 (int) ;
 int slist_init (int *) ;
 int slist_push_head (int *,int *) ;

CatCache *
InitCatCache(int id,
    Oid reloid,
    Oid indexoid,
    int nkeys,
    const int *key,
    int nbuckets)
{
 CatCache *cp;
 MemoryContext oldcxt;
 size_t sz;
 int i;
 Assert(nbuckets > 0 && (nbuckets & -nbuckets) == nbuckets);





 if (!CacheMemoryContext)
  CreateCacheMemoryContext();

 oldcxt = MemoryContextSwitchTo(CacheMemoryContext);




 if (CacheHdr == ((void*)0))
 {
  CacheHdr = (CatCacheHeader *) palloc(sizeof(CatCacheHeader));
  slist_init(&CacheHdr->ch_caches);
  CacheHdr->ch_ntup = 0;




 }






 sz = sizeof(CatCache) + PG_CACHE_LINE_SIZE;
 cp = (CatCache *) CACHELINEALIGN(palloc0(sz));
 cp->cc_bucket = palloc0(nbuckets * sizeof(dlist_head));






 cp->id = id;
 cp->cc_relname = "(not known yet)";
 cp->cc_reloid = reloid;
 cp->cc_indexoid = indexoid;
 cp->cc_relisshared = 0;
 cp->cc_tupdesc = (TupleDesc) ((void*)0);
 cp->cc_ntup = 0;
 cp->cc_nbuckets = nbuckets;
 cp->cc_nkeys = nkeys;
 for (i = 0; i < nkeys; ++i)
  cp->cc_keyno[i] = key[i];





 InitCatCache_DEBUG2;




 slist_push_head(&CacheHdr->ch_caches, &cp->cc_next);




 MemoryContextSwitchTo(oldcxt);

 return cp;
}
