
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int* predecessors; } ;
struct TYPE_11__ {TYPE_1__ cfg; TYPE_2__* blocks; } ;
typedef TYPE_3__ zend_ssa ;
typedef int zend_op_array ;
struct TYPE_12__ {int predecessors_count; int successors_count; size_t predecessor_offset; int * successors; } ;
typedef TYPE_4__ zend_basic_block ;
struct TYPE_10__ {int * phis; } ;


 int ZEND_ASSERT (int) ;
 int zend_ssa_remove_block (int *,TYPE_3__*,int) ;
 int zend_ssa_replace_control_link (int *,TYPE_3__*,int,int,int ) ;

__attribute__((used)) static void zend_ssa_unlink_block(zend_op_array *op_array, zend_ssa *ssa, zend_basic_block *block, int block_num)
{
 if (block->predecessors_count == 1 && ssa->blocks[block_num].phis == ((void*)0)) {
  int *predecessors, i;

  ZEND_ASSERT(block->successors_count == 1);
  predecessors = &ssa->cfg.predecessors[block->predecessor_offset];
  for (i = 0; i < block->predecessors_count; i++) {
   zend_ssa_replace_control_link(op_array, ssa, predecessors[i], block_num, block->successors[0]);
  }
  zend_ssa_remove_block(op_array, ssa, block_num);
 }
}
