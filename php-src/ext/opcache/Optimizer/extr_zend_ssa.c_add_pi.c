
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int* sources; int pi; int var; int ssa_var; struct TYPE_16__* next; struct TYPE_16__** use_chains; } ;
typedef TYPE_4__ zend_ssa_phi ;
struct TYPE_15__ {TYPE_2__* blocks; } ;
struct TYPE_17__ {TYPE_3__ cfg; TYPE_1__* blocks; } ;
typedef TYPE_5__ zend_ssa ;
typedef int zend_op_array ;
struct TYPE_18__ {int size; int use; int def; } ;
typedef TYPE_6__ zend_dfg ;
typedef int zend_arena ;
struct TYPE_14__ {int predecessors_count; } ;
struct TYPE_13__ {TYPE_4__* phis; } ;


 int DFG_SET (int ,int ,int,int) ;
 int ZEND_MM_ALIGNED_SIZE (int) ;
 int memset (int*,int,int) ;
 int needs_pi (int const*,TYPE_6__*,TYPE_5__*,int,int,int) ;
 TYPE_4__* zend_arena_calloc (int **,int,int) ;

__attribute__((used)) static zend_ssa_phi *add_pi(
  zend_arena **arena, const zend_op_array *op_array, zend_dfg *dfg, zend_ssa *ssa,
  int from, int to, int var)
{
 zend_ssa_phi *phi;
 if (!needs_pi(op_array, dfg, ssa, from, to, var)) {
  return ((void*)0);
 }

 phi = zend_arena_calloc(arena, 1,
  ZEND_MM_ALIGNED_SIZE(sizeof(zend_ssa_phi)) +
  ZEND_MM_ALIGNED_SIZE(sizeof(int) * ssa->cfg.blocks[to].predecessors_count) +
  sizeof(void*) * ssa->cfg.blocks[to].predecessors_count);
 phi->sources = (int*)(((char*)phi) + ZEND_MM_ALIGNED_SIZE(sizeof(zend_ssa_phi)));
 memset(phi->sources, 0xff, sizeof(int) * ssa->cfg.blocks[to].predecessors_count);
 phi->use_chains = (zend_ssa_phi**)(((char*)phi->sources) + ZEND_MM_ALIGNED_SIZE(sizeof(int) * ssa->cfg.blocks[to].predecessors_count));

 phi->pi = from;
 phi->var = var;
 phi->ssa_var = -1;
 phi->next = ssa->blocks[to].phis;
 ssa->blocks[to].phis = phi;




 DFG_SET(dfg->def, dfg->size, to, var);




 if (ssa->cfg.blocks[to].predecessors_count > 1) {
  DFG_SET(dfg->use, dfg->size, to, var);
 }

 return phi;
}
