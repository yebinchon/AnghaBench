
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;
typedef int mpc_apply_t ;


 int * mpc_apply (int *,int ) ;
 scalar_t__ mpc_ast_add_root ;

mpc_parser_t *mpca_root(mpc_parser_t *a) {
  return mpc_apply(a, (mpc_apply_t)mpc_ast_add_root);
}
