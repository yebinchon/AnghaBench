
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_err_t ;


 int mpc_err_print_to (int *,int ) ;
 int stdout ;

void mpc_err_print(mpc_err_t *x) {
  mpc_err_print_to(x, stdout);
}
