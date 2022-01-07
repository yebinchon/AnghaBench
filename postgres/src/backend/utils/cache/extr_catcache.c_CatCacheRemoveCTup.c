
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int ch_ntup; } ;
struct TYPE_9__ {scalar_t__ refcount; int dead; int keys; scalar_t__ negative; int cache_elem; scalar_t__ c_list; TYPE_1__* my_cache; } ;
struct TYPE_8__ {int cc_ntup; int cc_keyno; int cc_nkeys; int cc_tupdesc; } ;
typedef TYPE_1__ CatCache ;
typedef TYPE_2__ CatCTup ;


 int Assert (int) ;
 TYPE_7__* CacheHdr ;
 int CatCacheFreeKeys (int ,int ,int ,int ) ;
 int CatCacheRemoveCList (TYPE_1__*,scalar_t__) ;
 int dlist_delete (int *) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
CatCacheRemoveCTup(CatCache *cache, CatCTup *ct)
{
 Assert(ct->refcount == 0);
 Assert(ct->my_cache == cache);

 if (ct->c_list)
 {





  ct->dead = 1;
  CatCacheRemoveCList(cache, ct->c_list);
  return;
 }


 dlist_delete(&ct->cache_elem);





 if (ct->negative)
  CatCacheFreeKeys(cache->cc_tupdesc, cache->cc_nkeys,
       cache->cc_keyno, ct->keys);

 pfree(ct);

 --cache->cc_ntup;
 --CacheHdr->ch_ntup;
}
