
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ smgr_vm_nblocks; int smgr_rnode; } ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {TYPE_4__* rd_smgr; } ;
typedef TYPE_1__* Relation ;
typedef int Page ;
typedef TYPE_2__ PGAlignedBlock ;
typedef scalar_t__ BlockNumber ;


 int BLCKSZ ;
 int CacheInvalidateSmgr (int ) ;
 int ExclusiveLock ;
 scalar_t__ InvalidBlockNumber ;
 int LockRelationForExtension (TYPE_1__*,int ) ;
 int PageInit (int ,int ,int ) ;
 int PageSetChecksumInplace (int ,scalar_t__) ;
 int RelationOpenSmgr (TYPE_1__*) ;
 int UnlockRelationForExtension (TYPE_1__*,int ) ;
 int VISIBILITYMAP_FORKNUM ;
 int smgrcreate (TYPE_4__*,int ,int) ;
 int smgrexists (TYPE_4__*,int ) ;
 int smgrextend (TYPE_4__*,int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ smgrnblocks (TYPE_4__*,int ) ;

__attribute__((used)) static void
vm_extend(Relation rel, BlockNumber vm_nblocks)
{
 BlockNumber vm_nblocks_now;
 PGAlignedBlock pg;

 PageInit((Page) pg.data, BLCKSZ, 0);
 LockRelationForExtension(rel, ExclusiveLock);


 RelationOpenSmgr(rel);





 if ((rel->rd_smgr->smgr_vm_nblocks == 0 ||
   rel->rd_smgr->smgr_vm_nblocks == InvalidBlockNumber) &&
  !smgrexists(rel->rd_smgr, VISIBILITYMAP_FORKNUM))
  smgrcreate(rel->rd_smgr, VISIBILITYMAP_FORKNUM, 0);

 vm_nblocks_now = smgrnblocks(rel->rd_smgr, VISIBILITYMAP_FORKNUM);


 while (vm_nblocks_now < vm_nblocks)
 {
  PageSetChecksumInplace((Page) pg.data, vm_nblocks_now);

  smgrextend(rel->rd_smgr, VISIBILITYMAP_FORKNUM, vm_nblocks_now,
       pg.data, 0);
  vm_nblocks_now++;
 }
 CacheInvalidateSmgr(rel->rd_smgr->smgr_rnode);


 rel->rd_smgr->smgr_vm_nblocks = vm_nblocks_now;

 UnlockRelationForExtension(rel, ExclusiveLock);
}
