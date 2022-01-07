
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_input_t ;
typedef int mpc_err_t ;


 int * mpc_err_repeat (int *,int *,char*) ;
 int mpc_free (int *,char*) ;
 char* mpc_malloc (int *,scalar_t__) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static mpc_err_t *mpc_err_count(mpc_input_t *i, mpc_err_t *x, int n) {
  mpc_err_t *y;
  int digits = n/10 + 1;
  char *prefix;
  prefix = mpc_malloc(i, digits + strlen(" of ") + 1);
  sprintf(prefix, "%i of ", n);
  y = mpc_err_repeat(i, x, prefix);
  mpc_free(i, prefix);
  return y;
}
