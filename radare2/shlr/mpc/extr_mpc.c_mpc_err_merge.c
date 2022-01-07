
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_input_t ;
typedef int mpc_err_t ;


 int * mpc_err_or (int *,int **,int) ;

__attribute__((used)) static mpc_err_t *mpc_err_merge(mpc_input_t *i, mpc_err_t *x, mpc_err_t *y) {
  mpc_err_t *errs[2];
  errs[0] = x;
  errs[1] = y;
  return mpc_err_or(i, errs, 2);
}
