
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ id; int cc_reloid; int cc_indexoid; int * cc_tupdesc; } ;
struct TYPE_9__ {TYPE_1__* rd_index; } ;
struct TYPE_8__ {scalar_t__ indimmediate; scalar_t__ indisunique; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ CatCache ;


 scalar_t__ AMNAME ;
 scalar_t__ AMOID ;
 int AccessShareLock ;
 int Assert (int) ;
 int CatalogCacheInitializeCache (TYPE_3__*) ;
 int LockRelationOid (int ,int ) ;
 int UnlockRelationOid (int ,int ) ;
 int index_close (TYPE_2__*,int ) ;
 TYPE_2__* index_open (int ,int ) ;

void
InitCatCachePhase2(CatCache *cache, bool touch_index)
{
 if (cache->cc_tupdesc == ((void*)0))
  CatalogCacheInitializeCache(cache);

 if (touch_index &&
  cache->id != AMOID &&
  cache->id != AMNAME)
 {
  Relation idesc;







  LockRelationOid(cache->cc_reloid, AccessShareLock);
  idesc = index_open(cache->cc_indexoid, AccessShareLock);







  Assert(idesc->rd_index->indisunique &&
      idesc->rd_index->indimmediate);

  index_close(idesc, AccessShareLock);
  UnlockRelationOid(cache->cc_reloid, AccessShareLock);
 }
}
