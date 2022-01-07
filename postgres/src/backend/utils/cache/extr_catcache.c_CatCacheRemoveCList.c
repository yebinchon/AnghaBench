
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ refcount; int n_members; int keys; int nkeys; int cache_elem; TYPE_2__** members; TYPE_1__* my_cache; } ;
struct TYPE_10__ {scalar_t__ refcount; scalar_t__ dead; TYPE_3__* c_list; } ;
struct TYPE_9__ {int cc_keyno; int cc_tupdesc; } ;
typedef TYPE_1__ CatCache ;
typedef TYPE_2__ CatCTup ;
typedef TYPE_3__ CatCList ;


 int Assert (int) ;
 int CatCacheFreeKeys (int ,int ,int ,int ) ;
 int CatCacheRemoveCTup (TYPE_1__*,TYPE_2__*) ;
 int dlist_delete (int *) ;
 int pfree (TYPE_3__*) ;

__attribute__((used)) static void
CatCacheRemoveCList(CatCache *cache, CatCList *cl)
{
 int i;

 Assert(cl->refcount == 0);
 Assert(cl->my_cache == cache);


 for (i = cl->n_members; --i >= 0;)
 {
  CatCTup *ct = cl->members[i];

  Assert(ct->c_list == cl);
  ct->c_list = ((void*)0);

  if (

   ct->dead &&

   ct->refcount == 0)
   CatCacheRemoveCTup(cache, ct);
 }


 dlist_delete(&cl->cache_elem);


 CatCacheFreeKeys(cache->cc_tupdesc, cl->nkeys,
      cache->cc_keyno, cl->keys);

 pfree(cl);
}
