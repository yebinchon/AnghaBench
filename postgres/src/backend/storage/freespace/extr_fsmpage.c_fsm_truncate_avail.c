
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
struct TYPE_2__ {scalar_t__* fp_nodes; } ;
typedef int Page ;
typedef TYPE_1__* FSMPage ;


 int Assert (int) ;
 int LeafNodesPerPage ;
 size_t NodesPerPage ;
 int NonLeafNodesPerPage ;
 int PageGetContents (int ) ;
 int fsm_rebuild_page (int ) ;

bool
fsm_truncate_avail(Page page, int nslots)
{
 FSMPage fsmpage = (FSMPage) PageGetContents(page);
 uint8 *ptr;
 bool changed = 0;

 Assert(nslots >= 0 && nslots < LeafNodesPerPage);


 ptr = &fsmpage->fp_nodes[NonLeafNodesPerPage + nslots];
 for (; ptr < &fsmpage->fp_nodes[NodesPerPage]; ptr++)
 {
  if (*ptr != 0)
   changed = 1;
  *ptr = 0;
 }


 if (changed)
  fsm_rebuild_page(page);

 return changed;
}
