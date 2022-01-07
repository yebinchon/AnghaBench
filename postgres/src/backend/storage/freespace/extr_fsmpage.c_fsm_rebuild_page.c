
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
struct TYPE_2__ {scalar_t__* fp_nodes; } ;
typedef int Page ;
typedef TYPE_1__* FSMPage ;


 scalar_t__ Max (scalar_t__,scalar_t__) ;
 int NodesPerPage ;
 int NonLeafNodesPerPage ;
 int PageGetContents (int ) ;
 int leftchild (int) ;

bool
fsm_rebuild_page(Page page)
{
 FSMPage fsmpage = (FSMPage) PageGetContents(page);
 bool changed = 0;
 int nodeno;





 for (nodeno = NonLeafNodesPerPage - 1; nodeno >= 0; nodeno--)
 {
  int lchild = leftchild(nodeno);
  int rchild = lchild + 1;
  uint8 newvalue = 0;


  if (lchild < NodesPerPage)
   newvalue = fsmpage->fp_nodes[lchild];

  if (rchild < NodesPerPage)
   newvalue = Max(newvalue,
         fsmpage->fp_nodes[rchild]);

  if (fsmpage->fp_nodes[nodeno] != newvalue)
  {
   fsmpage->fp_nodes[nodeno] = newvalue;
   changed = 1;
  }
 }

 return changed;
}
