
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ addr; scalar_t__ end; char const* name; struct TYPE_3__** child; } ;
typedef TYPE_1__ zend_sym_node ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;


 TYPE_1__* symbols ;

__attribute__((used)) static const char* zend_jit_disasm_find_symbol(uint64_t addr,
                                               int64_t *offset) {
 zend_sym_node *node = symbols;
 while (node) {
  if (addr < node->addr) {
   node = node->child[0];
  } else if (addr > node->end) {
   node = node->child[1];
  } else {
   *offset = addr - node->addr;
   return node->name;
  }
 }
 return ((void*)0);
}
