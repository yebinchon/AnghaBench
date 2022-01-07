
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;
typedef int mpc_input_t ;
typedef int mpc_ast_t ;


 int * mpc_ast_new (char*,int *) ;
 int mpc_free (int *,int *) ;

__attribute__((used)) static mpc_val_t *mpcf_input_str_ast(mpc_input_t *i, mpc_val_t *c) {
  mpc_ast_t *a = mpc_ast_new("", c);
  mpc_free(i, c);
  return a;
}
