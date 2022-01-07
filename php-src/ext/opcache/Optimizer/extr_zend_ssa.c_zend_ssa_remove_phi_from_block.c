
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t block; struct TYPE_6__* next; } ;
typedef TYPE_1__ zend_ssa_phi ;
struct TYPE_7__ {TYPE_1__* phis; } ;
typedef TYPE_2__ zend_ssa_block ;
struct TYPE_8__ {TYPE_2__* blocks; } ;
typedef TYPE_3__ zend_ssa ;


 int ZEND_ASSERT (int ) ;

__attribute__((used)) static void zend_ssa_remove_phi_from_block(zend_ssa *ssa, zend_ssa_phi *phi)
{
 zend_ssa_block *block = &ssa->blocks[phi->block];
 zend_ssa_phi **cur = &block->phis;
 while (*cur != phi) {
  ZEND_ASSERT(*cur != ((void*)0));
  cur = &(*cur)->next;
 }
 *cur = (*cur)->next;
}
