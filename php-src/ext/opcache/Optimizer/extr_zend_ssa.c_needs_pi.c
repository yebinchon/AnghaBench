
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* blocks; } ;
struct TYPE_8__ {TYPE_6__ cfg; } ;
typedef TYPE_1__ zend_ssa ;
typedef int zend_op_array ;
struct TYPE_9__ {int size; int in; } ;
typedef TYPE_2__ zend_dfg ;
typedef int zend_bool ;
struct TYPE_10__ {int successors_count; int* successors; int predecessors_count; } ;
typedef TYPE_3__ zend_basic_block ;


 int DFG_ISSET (int ,int ,int,int) ;
 int ZEND_ASSERT (int) ;
 int dominates_other_predecessors (TYPE_6__*,TYPE_3__*,int,int) ;

__attribute__((used)) static zend_bool needs_pi(const zend_op_array *op_array, zend_dfg *dfg, zend_ssa *ssa, int from, int to, int var)
{
 zend_basic_block *from_block, *to_block;
 int other_successor;

 if (!DFG_ISSET(dfg->in, dfg->size, to, var)) {

  return 0;
 }



 from_block = &ssa->cfg.blocks[from];
 ZEND_ASSERT(from_block->successors_count == 2);
 if (from_block->successors[0] == from_block->successors[1]) {
  return 0;
 }

 to_block = &ssa->cfg.blocks[to];
 if (to_block->predecessors_count == 1) {

  return 1;
 }



 other_successor = from_block->successors[0] == to
  ? from_block->successors[1] : from_block->successors[0];
 return !dominates_other_predecessors(&ssa->cfg, to_block, other_successor, from);
}
