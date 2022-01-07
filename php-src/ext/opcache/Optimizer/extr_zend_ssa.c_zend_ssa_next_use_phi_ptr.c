
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ pi; size_t block; int* sources; struct TYPE_10__** use_chains; } ;
typedef TYPE_3__ zend_ssa_phi ;
struct TYPE_8__ {TYPE_2__* blocks; } ;
struct TYPE_11__ {TYPE_1__ cfg; } ;
typedef TYPE_4__ zend_ssa ;
struct TYPE_9__ {int predecessors_count; } ;


 int ZEND_ASSERT (int ) ;

__attribute__((used)) static inline zend_ssa_phi **zend_ssa_next_use_phi_ptr(zend_ssa *ssa, int var, zend_ssa_phi *p)
{
 if (p->pi >= 0) {
  return &p->use_chains[0];
 } else {
  int j;
  for (j = 0; j < ssa->cfg.blocks[p->block].predecessors_count; j++) {
   if (p->sources[j] == var) {
    return &p->use_chains[j];
   }
  }
 }
 ZEND_ASSERT(0);
 return ((void*)0);
}
