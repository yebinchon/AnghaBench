
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* rd_rel; int rd_smgr; int rd_backend; } ;
struct TYPE_7__ {int relpersistence; } ;
typedef int SMgrRelation ;
typedef TYPE_2__* Relation ;
typedef int RelFileNode ;
typedef scalar_t__ ForkNumber ;


 int FlushRelationBuffers (TYPE_2__*) ;
 scalar_t__ INIT_FORKNUM ;
 scalar_t__ MAIN_FORKNUM ;
 scalar_t__ MAX_FORKNUM ;
 int RELPERSISTENCE_PERMANENT ;
 int RELPERSISTENCE_UNLOGGED ;
 int RelationCopyStorage (int ,int ,scalar_t__,int ) ;
 int RelationCreateStorage (int const,int ) ;
 int RelationDropStorage (TYPE_2__*) ;
 int RelationOpenSmgr (TYPE_2__*) ;
 int log_smgrcreate (int const*,scalar_t__) ;
 int smgrclose (int ) ;
 int smgrcreate (int ,scalar_t__,int) ;
 scalar_t__ smgrexists (int ,scalar_t__) ;
 int smgropen (int const,int ) ;

__attribute__((used)) static void
heapam_relation_copy_data(Relation rel, const RelFileNode *newrnode)
{
 SMgrRelation dstrel;

 dstrel = smgropen(*newrnode, rel->rd_backend);
 RelationOpenSmgr(rel);







 FlushRelationBuffers(rel);
 RelationCreateStorage(*newrnode, rel->rd_rel->relpersistence);


 RelationCopyStorage(rel->rd_smgr, dstrel, MAIN_FORKNUM,
      rel->rd_rel->relpersistence);


 for (ForkNumber forkNum = MAIN_FORKNUM + 1;
   forkNum <= MAX_FORKNUM; forkNum++)
 {
  if (smgrexists(rel->rd_smgr, forkNum))
  {
   smgrcreate(dstrel, forkNum, 0);





   if (rel->rd_rel->relpersistence == RELPERSISTENCE_PERMANENT ||
    (rel->rd_rel->relpersistence == RELPERSISTENCE_UNLOGGED &&
     forkNum == INIT_FORKNUM))
    log_smgrcreate(newrnode, forkNum);
   RelationCopyStorage(rel->rd_smgr, dstrel, forkNum,
        rel->rd_rel->relpersistence);
  }
 }



 RelationDropStorage(rel);
 smgrclose(dstrel);
}
