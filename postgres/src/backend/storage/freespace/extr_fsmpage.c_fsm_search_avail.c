
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
typedef int uint16 ;
struct TYPE_5__ {scalar_t__* fp_nodes; int fp_next_slot; } ;
struct TYPE_4__ {int relNode; int dbNode; int spcNode; } ;
typedef TYPE_1__ RelFileNode ;
typedef int Page ;
typedef int ForkNumber ;
typedef TYPE_2__* FSMPage ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int BufferGetTag (int ,TYPE_1__*,int *,int *) ;
 int DEBUG1 ;
 int LeafNodesPerPage ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirtyHint (int ,int) ;
 int NodesPerPage ;
 int NonLeafNodesPerPage ;
 int PageGetContents (int ) ;
 int elog (int ,char*,int ,int ,int ,int ) ;
 int fsm_rebuild_page (int ) ;
 int leftchild (int) ;
 int parentof (int ) ;
 int rightneighbor (int) ;

int
fsm_search_avail(Buffer buf, uint8 minvalue, bool advancenext,
     bool exclusive_lock_held)
{
 Page page = BufferGetPage(buf);
 FSMPage fsmpage = (FSMPage) PageGetContents(page);
 int nodeno;
 int target;
 uint16 slot;

restart:





 if (fsmpage->fp_nodes[0] < minvalue)
  return -1;






 target = fsmpage->fp_next_slot;
 if (target < 0 || target >= LeafNodesPerPage)
  target = 0;
 target += NonLeafNodesPerPage;
 nodeno = target;
 while (nodeno > 0)
 {
  if (fsmpage->fp_nodes[nodeno] >= minvalue)
   break;





  nodeno = parentof(rightneighbor(nodeno));
 }






 while (nodeno < NonLeafNodesPerPage)
 {
  int childnodeno = leftchild(nodeno);

  if (childnodeno < NodesPerPage &&
   fsmpage->fp_nodes[childnodeno] >= minvalue)
  {
   nodeno = childnodeno;
   continue;
  }
  childnodeno++;
  if (childnodeno < NodesPerPage &&
   fsmpage->fp_nodes[childnodeno] >= minvalue)
  {
   nodeno = childnodeno;
  }
  else
  {
   RelFileNode rnode;
   ForkNumber forknum;
   BlockNumber blknum;

   BufferGetTag(buf, &rnode, &forknum, &blknum);
   elog(DEBUG1, "fixing corrupt FSM block %u, relation %u/%u/%u",
     blknum, rnode.spcNode, rnode.dbNode, rnode.relNode);


   if (!exclusive_lock_held)
   {
    LockBuffer(buf, BUFFER_LOCK_UNLOCK);
    LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);
    exclusive_lock_held = 1;
   }
   fsm_rebuild_page(page);
   MarkBufferDirtyHint(buf, 0);
   goto restart;
  }
 }


 slot = nodeno - NonLeafNodesPerPage;
 fsmpage->fp_next_slot = slot + (advancenext ? 1 : 0);

 return slot;
}
