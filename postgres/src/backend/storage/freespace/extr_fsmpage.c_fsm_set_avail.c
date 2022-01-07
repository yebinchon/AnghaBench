
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
 scalar_t__ Max (scalar_t__,scalar_t__) ;
 int NodesPerPage ;
 int NonLeafNodesPerPage ;
 int PageGetContents (int ) ;
 int fsm_rebuild_page (int ) ;
 int leftchild (int) ;
 int parentof (int) ;

bool
fsm_set_avail(Page page, int slot, uint8 value)
{
 int nodeno = NonLeafNodesPerPage + slot;
 FSMPage fsmpage = (FSMPage) PageGetContents(page);
 uint8 oldvalue;

 Assert(slot < LeafNodesPerPage);

 oldvalue = fsmpage->fp_nodes[nodeno];


 if (oldvalue == value && value <= fsmpage->fp_nodes[0])
  return 0;

 fsmpage->fp_nodes[nodeno] = value;





 do
 {
  uint8 newvalue = 0;
  int lchild;
  int rchild;

  nodeno = parentof(nodeno);
  lchild = leftchild(nodeno);
  rchild = lchild + 1;

  newvalue = fsmpage->fp_nodes[lchild];
  if (rchild < NodesPerPage)
   newvalue = Max(newvalue,
         fsmpage->fp_nodes[rchild]);

  oldvalue = fsmpage->fp_nodes[nodeno];
  if (oldvalue == newvalue)
   break;

  fsmpage->fp_nodes[nodeno] = newvalue;
 } while (nodeno > 0);





 if (value > fsmpage->fp_nodes[0])
  fsm_rebuild_page(page);

 return 1;
}
