
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int children_num; struct TYPE_4__** children; int contents; int tag; } ;
typedef TYPE_1__ mpc_ast_t ;


 scalar_t__ strcmp (int ,int ) ;

int mpc_ast_eq(mpc_ast_t *a, mpc_ast_t *b) {

  int i;

  if (strcmp(a->tag, b->tag) != 0) { return 0; }
  if (strcmp(a->contents, b->contents) != 0) { return 0; }
  if (a->children_num != b->children_num) { return 0; }

  for (i = 0; i < a->children_num; i++) {
    if (!mpc_ast_eq(a->children[i], b->children[i])) { return 0; }
  }

  return 1;
}
