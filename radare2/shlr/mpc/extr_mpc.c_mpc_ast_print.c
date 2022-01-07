
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_ast_t ;


 int mpc_ast_print_depth (int *,int ,int ) ;
 int stdout ;

void mpc_ast_print(mpc_ast_t *a) {
  mpc_ast_print_depth(a, 0, stdout);
}
