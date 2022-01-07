
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parent; struct TYPE_4__** child; } ;
typedef TYPE_1__ zend_sym_node ;


 TYPE_1__* symbols ;

__attribute__((used)) static void zend_syms_rotateright(zend_sym_node *p) {
 zend_sym_node *l = p->child[0];
 p->child[0] = l->child[1];
 if (l->child[1]) {
  l->child[1]->parent = p;
 }
 l->parent = p->parent;
 if (p->parent == ((void*)0)) {
  symbols = l;
 } else if (p->parent->child[1] == p) {
  p->parent->child[1] = l;
 } else {
  p->parent->child[0] = l;
 }
 l->child[1] = p;
 p->parent = l;
}
