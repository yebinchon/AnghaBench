
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int estimated_count; scalar_t__ pages_free; scalar_t__ num_pages; scalar_t__ pages_deleted; scalar_t__ num_index_tuples; } ;
struct TYPE_11__ {TYPE_1__ stats; void* empty_leaf_set; void* internal_page_set; int page_set_context; } ;
struct TYPE_10__ {int startNSN; void* callback_state; int callback; TYPE_4__* stats; TYPE_2__* info; } ;
struct TYPE_9__ {int index; } ;
typedef int Relation ;
typedef int MemoryContext ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef int IndexBulkDeleteCallback ;
typedef TYPE_3__ GistVacState ;
typedef TYPE_4__ GistBulkDeleteResult ;
typedef scalar_t__ BlockNumber ;


 int ExclusiveLock ;
 scalar_t__ GIST_ROOT_BLKNO ;
 int GetInsertRecPtr () ;
 int IndexFreeSpaceMapVacuum (int ) ;
 int LockRelationForExtension (int ,int ) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int RELATION_IS_LOCAL (int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int UnlockRelationForExtension (int ,int ) ;
 int gistGetFakeLSN (int ) ;
 int gistvacuumpage (TYPE_3__*,scalar_t__,scalar_t__) ;
 void* intset_create () ;

__attribute__((used)) static void
gistvacuumscan(IndexVacuumInfo *info, GistBulkDeleteResult *stats,
      IndexBulkDeleteCallback callback, void *callback_state)
{
 Relation rel = info->index;
 GistVacState vstate;
 BlockNumber num_pages;
 bool needLock;
 BlockNumber blkno;
 MemoryContext oldctx;





 stats->stats.estimated_count = 0;
 stats->stats.num_index_tuples = 0;
 stats->stats.pages_deleted = 0;
 stats->stats.pages_free = 0;
 MemoryContextReset(stats->page_set_context);







 oldctx = MemoryContextSwitchTo(stats->page_set_context);
 stats->internal_page_set = intset_create();
 stats->empty_leaf_set = intset_create();
 MemoryContextSwitchTo(oldctx);


 vstate.info = info;
 vstate.stats = stats;
 vstate.callback = callback;
 vstate.callback_state = callback_state;
 if (RelationNeedsWAL(rel))
  vstate.startNSN = GetInsertRecPtr();
 else
  vstate.startNSN = gistGetFakeLSN(rel);
 needLock = !RELATION_IS_LOCAL(rel);

 blkno = GIST_ROOT_BLKNO;
 for (;;)
 {

  if (needLock)
   LockRelationForExtension(rel, ExclusiveLock);
  num_pages = RelationGetNumberOfBlocks(rel);
  if (needLock)
   UnlockRelationForExtension(rel, ExclusiveLock);


  if (blkno >= num_pages)
   break;

  for (; blkno < num_pages; blkno++)
   gistvacuumpage(&vstate, blkno, blkno);
 }
 if (stats->stats.pages_free > 0)
  IndexFreeSpaceMapVacuum(rel);


 stats->stats.num_pages = num_pages;
}
