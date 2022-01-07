
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_op_array ;
struct TYPE_5__ {int blocks_count; TYPE_2__* blocks; } ;
typedef TYPE_1__ zend_cfg ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_2__ zend_basic_block ;


 int ZEND_BB_REACHABLE ;
 int fprintf (int ,char*) ;
 int stderr ;
 int zend_dump_block_info (TYPE_1__ const*,int,int ) ;
 int zend_dump_op_array_name (int const*) ;

void zend_dump_dominators(const zend_op_array *op_array, const zend_cfg *cfg)
{
 int j;

 fprintf(stderr, "\nDOMINATORS-TREE for \"");
 zend_dump_op_array_name(op_array);
 fprintf(stderr, "\"\n");
 for (j = 0; j < cfg->blocks_count; j++) {
  zend_basic_block *b = cfg->blocks + j;
  if (b->flags & ZEND_BB_REACHABLE) {
   zend_dump_block_info(cfg, j, 0);
  }
 }
}
