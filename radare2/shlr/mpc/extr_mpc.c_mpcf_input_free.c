
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;
typedef int mpc_input_t ;


 int mpc_free (int *,int *) ;

__attribute__((used)) static mpc_val_t *mpcf_input_free(mpc_input_t *i, mpc_val_t *x) {
  mpc_free(i, x);
  return ((void*)0);
}
