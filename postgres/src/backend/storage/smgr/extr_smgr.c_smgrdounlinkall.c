
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* smgr_unlink ) (int ,int ,int) ;int (* smgr_close ) (TYPE_1__*,int ) ;} ;
struct TYPE_5__ {int smgr_which; int smgr_rnode; } ;
typedef TYPE_1__* SMgrRelation ;
typedef int RelFileNodeBackend ;
typedef int ForkNumber ;


 int CacheInvalidateSmgr (int ) ;
 int DropRelFileNodesAllBuffers (int *,int) ;
 int MAX_FORKNUM ;
 int * palloc (int) ;
 int pfree (int *) ;
 TYPE_3__* smgrsw ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (int ,int ,int) ;

void
smgrdounlinkall(SMgrRelation *rels, int nrels, bool isRedo)
{
 int i = 0;
 RelFileNodeBackend *rnodes;
 ForkNumber forknum;

 if (nrels == 0)
  return;





 rnodes = palloc(sizeof(RelFileNodeBackend) * nrels);
 for (i = 0; i < nrels; i++)
 {
  RelFileNodeBackend rnode = rels[i]->smgr_rnode;
  int which = rels[i]->smgr_which;

  rnodes[i] = rnode;


  for (forknum = 0; forknum <= MAX_FORKNUM; forknum++)
   smgrsw[which].smgr_close(rels[i], forknum);
 }





 DropRelFileNodesAllBuffers(rnodes, nrels);
 for (i = 0; i < nrels; i++)
  CacheInvalidateSmgr(rnodes[i]);
 for (i = 0; i < nrels; i++)
 {
  int which = rels[i]->smgr_which;

  for (forknum = 0; forknum <= MAX_FORKNUM; forknum++)
   smgrsw[which].smgr_unlink(rnodes[i], forknum, isRedo);
 }

 pfree(rnodes);
}
