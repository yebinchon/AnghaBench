
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* contents; struct TYPE_4__* tag; struct TYPE_4__* children; } ;
typedef TYPE_1__ mpc_ast_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void mpc_ast_delete_no_children(mpc_ast_t *a) {
  free(a->children);
  free(a->tag);
  free(a->contents);
  free(a);
}
