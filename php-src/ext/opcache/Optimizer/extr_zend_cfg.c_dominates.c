
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ level; int idom; } ;
typedef TYPE_1__ zend_basic_block ;



__attribute__((used)) static int dominates(zend_basic_block *blocks, int a, int b)
{
 while (blocks[b].level > blocks[a].level) {
  b = blocks[b].idom;
 }
 return a == b;
}
