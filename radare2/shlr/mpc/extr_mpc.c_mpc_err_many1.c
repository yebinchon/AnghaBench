
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_input_t ;
typedef int mpc_err_t ;


 int * mpc_err_repeat (int *,int *,char*) ;

__attribute__((used)) static mpc_err_t *mpc_err_many1(mpc_input_t *i, mpc_err_t *x) {
  return mpc_err_repeat(i, x, "one or more of ");
}
