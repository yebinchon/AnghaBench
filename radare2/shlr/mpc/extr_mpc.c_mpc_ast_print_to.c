
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_ast_t ;
typedef int FILE ;


 int mpc_ast_print_depth (int *,int ,int *) ;

void mpc_ast_print_to(mpc_ast_t *a, FILE *fp) {
  mpc_ast_print_depth(a, 0, fp);
}
