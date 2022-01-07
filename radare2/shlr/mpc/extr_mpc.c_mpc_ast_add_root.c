
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int children_num; } ;
typedef TYPE_1__ mpc_ast_t ;


 int mpc_ast_add_child (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* mpc_ast_new (char*,char*) ;

mpc_ast_t *mpc_ast_add_root(mpc_ast_t *a) {

  mpc_ast_t *r;

  if (!a) { return a; }
  if (a->children_num == 0) { return a; }
  if (a->children_num == 1) { return a; }

  r = mpc_ast_new(">", "");
  mpc_ast_add_child(r, a);
  return r;
}
