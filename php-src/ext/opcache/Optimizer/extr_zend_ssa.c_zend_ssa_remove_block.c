
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


struct TYPE_18__ {int ssa_var; struct TYPE_18__* next; } ;
typedef TYPE_2__ zend_ssa_phi ;
struct TYPE_19__ {TYPE_2__* phis; } ;
typedef TYPE_3__ zend_ssa_block ;
struct TYPE_17__ {int* predecessors; TYPE_6__* blocks; } ;
struct TYPE_20__ {TYPE_1__ cfg; int * ops; TYPE_3__* blocks; } ;
typedef TYPE_4__ zend_ssa ;
struct TYPE_21__ {TYPE_12__* opcodes; } ;
typedef TYPE_5__ zend_op_array ;
struct TYPE_22__ {int start; int len; int successors_count; int* successors; size_t predecessor_offset; int predecessors_count; size_t idom; int children; int next_child; int level; int flags; } ;
typedef TYPE_6__ zend_basic_block ;
struct TYPE_16__ {scalar_t__ opcode; } ;


 int ZEND_BB_REACHABLE ;
 scalar_t__ ZEND_NOP ;
 int memmove (int*,int*,int) ;
 int zend_ssa_remove_defs_of_instr (TYPE_4__*,int *) ;
 int zend_ssa_remove_instr (TYPE_4__*,TYPE_12__*,int *) ;
 int zend_ssa_remove_phi (TYPE_4__*,TYPE_2__*) ;
 int zend_ssa_remove_predecessor (TYPE_4__*,int,int) ;
 int zend_ssa_remove_uses_of_var (TYPE_4__*,int ) ;

void zend_ssa_remove_block(zend_op_array *op_array, zend_ssa *ssa, int i)
{
 zend_basic_block *block = &ssa->cfg.blocks[i];
 zend_ssa_block *ssa_block = &ssa->blocks[i];
 int *predecessors;
 zend_ssa_phi *phi;
 int j, s;

 block->flags &= ~ZEND_BB_REACHABLE;


 for (phi = ssa_block->phis; phi; phi = phi->next) {
  zend_ssa_remove_uses_of_var(ssa, phi->ssa_var);
  zend_ssa_remove_phi(ssa, phi);
 }


 for (j = block->start; j < block->start + block->len; j++) {
  if (op_array->opcodes[j].opcode == ZEND_NOP) {
   continue;
  }

  zend_ssa_remove_defs_of_instr(ssa, &ssa->ops[j]);
  zend_ssa_remove_instr(ssa, &op_array->opcodes[j], &ssa->ops[j]);
 }

 for (s = 0; s < block->successors_count; s++) {
  zend_ssa_remove_predecessor(ssa, i, block->successors[s]);
 }


 predecessors = &ssa->cfg.predecessors[block->predecessor_offset];
 for (j = 0; j < block->predecessors_count; j++) {
  if (predecessors[j] >= 0) {
   zend_basic_block *prev_block = &ssa->cfg.blocks[predecessors[j]];

   for (s = 0; s < prev_block->successors_count; s++) {
    if (prev_block->successors[s] == i) {
     memmove(prev_block->successors + s,
       prev_block->successors + s + 1,
       sizeof(int) * (prev_block->successors_count - s - 1));
     prev_block->successors_count--;
     s--;
    }
   }
  }
 }

 block->successors_count = 0;
 block->predecessors_count = 0;


 if (block->idom >= 0) {
  j = ssa->cfg.blocks[block->idom].children;
  if (j == i) {
   ssa->cfg.blocks[block->idom].children = block->next_child;
  } else if (j >= 0) {
   while (ssa->cfg.blocks[j].next_child >= 0) {
    if (ssa->cfg.blocks[j].next_child == i) {
     ssa->cfg.blocks[j].next_child = block->next_child;
     break;
    }
    j = ssa->cfg.blocks[j].next_child;
   }
  }
 }
 block->idom = -1;
 block->level = -1;
 block->children = -1;
 block->next_child = -1;
}
