
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int isRoot; struct TYPE_10__* child; int leftBlkno; } ;
struct TYPE_9__ {int strategy; int index; } ;
typedef TYPE_1__ GinVacuumState ;
typedef TYPE_2__ DataPageDeleteStack ;
typedef int Buffer ;
typedef int BlockNumber ;


 int InvalidBlockNumber ;
 int InvalidOffsetNumber ;
 int LockBufferForCleanup (int ) ;
 int MAIN_FORKNUM ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int ,int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int ginScanToDelete (TYPE_1__*,int ,int,TYPE_2__*,int ) ;
 scalar_t__ ginVacuumPostingTreeLeaves (TYPE_1__*,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
ginVacuumPostingTree(GinVacuumState *gvs, BlockNumber rootBlkno)
{
 if (ginVacuumPostingTreeLeaves(gvs, rootBlkno))
 {




  Buffer buffer;
  DataPageDeleteStack root,
       *ptr,
       *tmp;

  buffer = ReadBufferExtended(gvs->index, MAIN_FORKNUM, rootBlkno,
         RBM_NORMAL, gvs->strategy);





  LockBufferForCleanup(buffer);

  memset(&root, 0, sizeof(DataPageDeleteStack));
  root.leftBlkno = InvalidBlockNumber;
  root.isRoot = 1;

  ginScanToDelete(gvs, rootBlkno, 1, &root, InvalidOffsetNumber);

  ptr = root.child;

  while (ptr)
  {
   tmp = ptr->child;
   pfree(ptr);
   ptr = tmp;
  }

  UnlockReleaseBuffer(buffer);
 }
}
