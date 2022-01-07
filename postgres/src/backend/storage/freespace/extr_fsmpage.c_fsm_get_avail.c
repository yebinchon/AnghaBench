
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_2__ {int * fp_nodes; } ;
typedef int Page ;
typedef TYPE_1__* FSMPage ;


 int Assert (int) ;
 int LeafNodesPerPage ;
 int NonLeafNodesPerPage ;
 int PageGetContents (int ) ;

uint8
fsm_get_avail(Page page, int slot)
{
 FSMPage fsmpage = (FSMPage) PageGetContents(page);

 Assert(slot < LeafNodesPerPage);

 return fsmpage->fp_nodes[NonLeafNodesPerPage + slot];
}
