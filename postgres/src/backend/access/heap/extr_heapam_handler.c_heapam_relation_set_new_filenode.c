
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_5__ {TYPE_1__* rd_rel; } ;
struct TYPE_4__ {scalar_t__ relkind; } ;
typedef int SMgrRelation ;
typedef TYPE_2__* Relation ;
typedef int RelFileNode ;
typedef int MultiXactId ;


 int Assert (int) ;
 int GetOldestMultiXactId () ;
 int INIT_FORKNUM ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELKIND_TOASTVALUE ;
 char RELPERSISTENCE_UNLOGGED ;
 int RecentXmin ;
 int RelationCreateStorage (int const,char) ;
 int log_smgrcreate (int const*,int ) ;
 int smgrclose (int ) ;
 int smgrcreate (int ,int ,int) ;
 int smgrimmedsync (int ,int ) ;

__attribute__((used)) static void
heapam_relation_set_new_filenode(Relation rel,
         const RelFileNode *newrnode,
         char persistence,
         TransactionId *freezeXid,
         MultiXactId *minmulti)
{
 SMgrRelation srel;






 *freezeXid = RecentXmin;
 *minmulti = GetOldestMultiXactId();

 srel = RelationCreateStorage(*newrnode, persistence);
 if (persistence == RELPERSISTENCE_UNLOGGED)
 {
  Assert(rel->rd_rel->relkind == RELKIND_RELATION ||
      rel->rd_rel->relkind == RELKIND_MATVIEW ||
      rel->rd_rel->relkind == RELKIND_TOASTVALUE);
  smgrcreate(srel, INIT_FORKNUM, 0);
  log_smgrcreate(newrnode, INIT_FORKNUM);
  smgrimmedsync(srel, INIT_FORKNUM);
 }

 smgrclose(srel);
}
