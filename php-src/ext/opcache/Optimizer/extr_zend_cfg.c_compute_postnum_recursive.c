
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* blocks; } ;
typedef TYPE_1__ zend_cfg ;
struct TYPE_5__ {int successors_count; int* successors; } ;
typedef TYPE_2__ zend_basic_block ;



__attribute__((used)) static void compute_postnum_recursive(
  int *postnum, int *cur, const zend_cfg *cfg, int block_num)
{
 int s;
 zend_basic_block *block = &cfg->blocks[block_num];
 if (postnum[block_num] != -1) {
  return;
 }

 postnum[block_num] = -2;
 for (s = 0; s < block->successors_count; s++) {
  compute_postnum_recursive(postnum, cur, cfg, block->successors[s]);
 }
 postnum[block_num] = (*cur)++;
}
