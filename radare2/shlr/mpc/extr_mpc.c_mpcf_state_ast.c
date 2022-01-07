
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;
typedef int mpc_state_t ;
typedef int mpc_ast_t ;


 int free (int *) ;
 int * mpc_ast_state (int *,int ) ;

mpc_val_t *mpcf_state_ast(int n, mpc_val_t **xs) {
  mpc_state_t *s = ((mpc_state_t**)xs)[0];
  mpc_ast_t *a = ((mpc_ast_t**)xs)[1];
  (void)n;
  a = mpc_ast_state(a, *s);
  free(s);
  return a;
}
