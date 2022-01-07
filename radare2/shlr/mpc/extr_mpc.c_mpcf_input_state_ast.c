
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;
typedef int mpc_state_t ;
typedef int mpc_input_t ;
typedef int mpc_ast_t ;


 int * mpc_ast_state (int *,int ) ;
 int mpc_free (int *,int *) ;

__attribute__((used)) static mpc_val_t *mpcf_input_state_ast(mpc_input_t *i, int n, mpc_val_t **xs) {
  mpc_state_t *s = ((mpc_state_t**)xs)[0];
  mpc_ast_t *a = ((mpc_ast_t**)xs)[1];
  a = mpc_ast_state(a, *s);
  mpc_free(i, s);
  (void) n;
  return a;
}
