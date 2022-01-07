
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parent; struct TYPE_4__** child; } ;
typedef TYPE_1__ zend_sym_node ;


 TYPE_1__* symbols ;

__attribute__((used)) static void zend_syms_rotateleft(zend_sym_node *p) {
 zend_sym_node *r = p->child[1];
 p->child[1] = r->child[0];
 if (r->child[0]) {
  r->child[0]->parent = p;
 }
 r->parent = p->parent;
 if (p->parent == ((void*)0)) {
  symbols = r;
 } else if (p->parent->child[0] == p) {
  p->parent->child[0] = r;
 } else {
  p->parent->child[1] = r;
 }
 r->child[0] = p;
 p->parent = r;
}
