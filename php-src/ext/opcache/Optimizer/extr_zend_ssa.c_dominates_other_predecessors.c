
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* predecessors; int blocks; } ;
typedef TYPE_1__ zend_cfg ;
typedef int zend_bool ;
struct TYPE_6__ {int predecessors_count; int predecessor_offset; } ;
typedef TYPE_2__ zend_basic_block ;


 int dominates (int ,int,int) ;

__attribute__((used)) static zend_bool dominates_other_predecessors(
  const zend_cfg *cfg, const zend_basic_block *block, int check, int exclude) {
 int i;
 for (i = 0; i < block->predecessors_count; i++) {
  int predecessor = cfg->predecessors[block->predecessor_offset + i];
  if (predecessor != exclude && !dominates(cfg->blocks, check, predecessor)) {
   return 0;
  }
 }
 return 1;
}
