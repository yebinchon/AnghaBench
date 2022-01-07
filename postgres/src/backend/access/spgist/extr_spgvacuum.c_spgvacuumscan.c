
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ lastFilledBlock; TYPE_2__* stats; int * pendingList; int myXmin; int spgstate; TYPE_1__* info; } ;
typedef TYPE_3__ spgBulkDeleteState ;
struct TYPE_11__ {int xmin; } ;
struct TYPE_9__ {int estimated_count; scalar_t__ pages_deleted; scalar_t__ pages_free; scalar_t__ num_pages; int pages_removed; scalar_t__ num_index_tuples; } ;
struct TYPE_8__ {int index; } ;
typedef int Relation ;
typedef scalar_t__ BlockNumber ;


 int ExclusiveLock ;
 TYPE_7__* GetActiveSnapshot () ;
 int IndexFreeSpaceMapVacuum (int ) ;
 int LockRelationForExtension (int ,int ) ;
 int RELATION_IS_LOCAL (int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationTruncate (int ,scalar_t__) ;
 scalar_t__ SPGIST_LAST_FIXED_BLKNO ;
 scalar_t__ SPGIST_METAPAGE_BLKNO ;
 int SpGistUpdateMetaPage (int ) ;
 int UnlockRelationForExtension (int ,int ) ;
 int initSpGistState (int *,int ) ;
 int spgprocesspending (TYPE_3__*) ;
 int spgvacuumpage (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static void
spgvacuumscan(spgBulkDeleteState *bds)
{
 Relation index = bds->info->index;
 bool needLock;
 BlockNumber num_pages,
    blkno;


 initSpGistState(&bds->spgstate, index);
 bds->pendingList = ((void*)0);
 bds->myXmin = GetActiveSnapshot()->xmin;
 bds->lastFilledBlock = SPGIST_LAST_FIXED_BLKNO;





 bds->stats->estimated_count = 0;
 bds->stats->num_index_tuples = 0;
 bds->stats->pages_deleted = 0;


 needLock = !RELATION_IS_LOCAL(index);
 blkno = SPGIST_METAPAGE_BLKNO + 1;
 for (;;)
 {

  if (needLock)
   LockRelationForExtension(index, ExclusiveLock);
  num_pages = RelationGetNumberOfBlocks(index);
  if (needLock)
   UnlockRelationForExtension(index, ExclusiveLock);


  if (blkno >= num_pages)
   break;

  for (; blkno < num_pages; blkno++)
  {
   spgvacuumpage(bds, blkno);

   if (bds->pendingList != ((void*)0))
    spgprocesspending(bds);
  }
 }


 SpGistUpdateMetaPage(index);
 if (bds->stats->pages_deleted > 0)
  IndexFreeSpaceMapVacuum(index);
 bds->stats->num_pages = num_pages;
 bds->stats->pages_free = bds->stats->pages_deleted;
}
