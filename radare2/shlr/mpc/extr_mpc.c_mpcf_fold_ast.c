
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int children_num; int state; struct TYPE_9__** children; } ;
typedef TYPE_1__ mpc_val_t ;
typedef TYPE_1__ mpc_ast_t ;


 int mpc_ast_add_child (TYPE_1__*,TYPE_1__*) ;
 int mpc_ast_delete_no_children (TYPE_1__*) ;
 TYPE_1__* mpc_ast_new (char*,char*) ;

mpc_val_t *mpcf_fold_ast(int n, mpc_val_t **xs) {

  int i, j;
  mpc_ast_t** as = (mpc_ast_t**)xs;
  mpc_ast_t *r;

  if (n == 0) { return ((void*)0); }
  if (n == 1) { return xs[0]; }
  if (n == 2 && !xs[1]) { return xs[0]; }
  if (n == 2 && !xs[0]) { return xs[1]; }

  r = mpc_ast_new(">", "");

  for (i = 0; i < n; i++) {

    if (!as[i]) { continue; }

    if (as[i] && as[i]->children_num > 0) {

      for (j = 0; j < as[i]->children_num; j++) {
        mpc_ast_add_child(r, as[i]->children[j]);
      }

      mpc_ast_delete_no_children(as[i]);

    } else if (as[i] && as[i]->children_num == 0) {
      mpc_ast_add_child(r, as[i]);
    }

  }

  if (r->children_num) {
    r->state = r->children[0]->state;
  }

  return r;
}
