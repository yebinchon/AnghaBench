
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ssa_var; struct TYPE_11__* next; } ;
typedef TYPE_3__ zend_ssa_phi ;
struct TYPE_12__ {TYPE_3__* phis; } ;
typedef TYPE_4__ zend_ssa_block ;
typedef int uint32_t ;
struct TYPE_10__ {int (* visit_phi ) (TYPE_5__*,TYPE_3__*) ;} ;
struct TYPE_13__ {TYPE_2__ handlers; int phi_var_worklist; TYPE_1__* ssa; int block_worklist; int executable_blocks; int feasible_edges; } ;
typedef TYPE_5__ scdf_ctx ;
struct TYPE_9__ {TYPE_4__* blocks; int cfg; } ;


 int DEBUG_PRINT (char*,int,...) ;
 int scdf_edge (int *,int,int) ;
 int stub1 (TYPE_5__*,TYPE_3__*) ;
 int zend_bitset_excl (int ,int ) ;
 scalar_t__ zend_bitset_in (int ,int) ;
 int zend_bitset_incl (int ,int) ;

void scdf_mark_edge_feasible(scdf_ctx *scdf, int from, int to) {
 uint32_t edge = scdf_edge(&scdf->ssa->cfg, from, to);

 if (zend_bitset_in(scdf->feasible_edges, edge)) {

  return;
 }

 DEBUG_PRINT("Marking edge %d->%d feasible\n", from, to);
 zend_bitset_incl(scdf->feasible_edges, edge);

 if (!zend_bitset_in(scdf->executable_blocks, to)) {
  if (!zend_bitset_in(scdf->block_worklist, to)) {
   DEBUG_PRINT("Adding block %d to worklist\n", to);
  }
  zend_bitset_incl(scdf->block_worklist, to);
 } else {


  zend_ssa_block *ssa_block = &scdf->ssa->blocks[to];
  zend_ssa_phi *phi;
  for (phi = ssa_block->phis; phi; phi = phi->next) {
   zend_bitset_excl(scdf->phi_var_worklist, phi->ssa_var);
   scdf->handlers.visit_phi(scdf, phi);
  }
 }
}
