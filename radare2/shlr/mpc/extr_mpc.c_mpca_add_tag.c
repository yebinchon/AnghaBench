
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;
typedef int mpc_apply_to_t ;


 int * mpc_apply_to (int *,int ,void*) ;
 scalar_t__ mpc_ast_add_tag ;

mpc_parser_t *mpca_add_tag(mpc_parser_t *a, const char *t) {
  return mpc_apply_to(a, (mpc_apply_to_t)mpc_ast_add_tag, (void*)t);
}
