
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int pi; scalar_t__* sources; int ssa_var; struct TYPE_13__* next; } ;
typedef TYPE_2__ zend_ssa_phi ;
struct TYPE_14__ {TYPE_2__* phis; } ;
typedef TYPE_3__ zend_ssa_block ;
struct TYPE_12__ {int* predecessors; TYPE_5__* blocks; } ;
struct TYPE_15__ {TYPE_1__ cfg; TYPE_3__* blocks; } ;
typedef TYPE_4__ zend_ssa ;
struct TYPE_16__ {size_t predecessor_offset; int predecessors_count; } ;
typedef TYPE_5__ zend_basic_block ;
typedef int uint32_t ;


 int ZEND_ASSERT (int) ;
 int memmove (int*,int*,int) ;
 int zend_ssa_remove_phi (TYPE_4__*,TYPE_2__*) ;
 int zend_ssa_remove_phi_source (TYPE_4__*,TYPE_2__*,int,int) ;
 int zend_ssa_remove_uses_of_var (TYPE_4__*,int ) ;

void zend_ssa_remove_predecessor(zend_ssa *ssa, int from, int to)
{
 zend_basic_block *next_block = &ssa->cfg.blocks[to];
 zend_ssa_block *next_ssa_block = &ssa->blocks[to];
 zend_ssa_phi *phi;
 int j;


 int pred_offset = -1;
 int *predecessors = &ssa->cfg.predecessors[next_block->predecessor_offset];

 for (j = 0; j < next_block->predecessors_count; j++) {
  if (predecessors[j] == from) {
   pred_offset = j;
   break;
  }
 }



 if (pred_offset == -1) {
  return;
 }


 for (phi = next_ssa_block->phis; phi; phi = phi->next) {
  if (phi->pi >= 0) {
   if (phi->pi == from) {
    zend_ssa_remove_uses_of_var(ssa, phi->ssa_var);
    zend_ssa_remove_phi(ssa, phi);
   }
  } else {
   ZEND_ASSERT(phi->sources[pred_offset] >= 0);
   zend_ssa_remove_phi_source(ssa, phi, pred_offset, next_block->predecessors_count);
  }
 }


 next_block->predecessors_count--;
 if (pred_offset < next_block->predecessors_count) {
  predecessors = &ssa->cfg.predecessors[next_block->predecessor_offset + pred_offset];
  memmove(predecessors, predecessors + 1, (next_block->predecessors_count - pred_offset) * sizeof(uint32_t));
 }
}
