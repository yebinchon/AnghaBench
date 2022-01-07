
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opr_oid; } ;
typedef int OprCacheKey ;
typedef TYPE_1__ OprCacheEntry ;
typedef int Oid ;


 int Assert (int ) ;
 int HASH_ENTER ;
 int * OprCacheHash ;
 scalar_t__ hash_search (int *,void*,int ,int *) ;

__attribute__((used)) static void
make_oper_cache_entry(OprCacheKey *key, Oid opr_oid)
{
 OprCacheEntry *oprentry;

 Assert(OprCacheHash != ((void*)0));

 oprentry = (OprCacheEntry *) hash_search(OprCacheHash,
            (void *) key,
            HASH_ENTER, ((void*)0));
 oprentry->opr_oid = opr_oid;
}
