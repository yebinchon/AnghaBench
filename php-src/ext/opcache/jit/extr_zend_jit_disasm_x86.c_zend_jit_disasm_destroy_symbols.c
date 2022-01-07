
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__** child; } ;
typedef TYPE_1__ zend_sym_node ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void zend_jit_disasm_destroy_symbols(zend_sym_node *n) {
 if (n) {
  if (n->child[0]) {
   zend_jit_disasm_destroy_symbols(n->child[0]);
  } else if (n->child[1]) {
   zend_jit_disasm_destroy_symbols(n->child[1]);
  }
  free(n);
 }
}
