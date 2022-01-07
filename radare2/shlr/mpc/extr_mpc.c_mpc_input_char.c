
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_input_t ;


 int mpc_input_failure (int *,char) ;
 char mpc_input_getc (int *) ;
 int mpc_input_success (int *,char,char**) ;
 scalar_t__ mpc_input_terminated (int *) ;

__attribute__((used)) static int mpc_input_char(mpc_input_t *i, char c, char **o) {
  char x = mpc_input_getc(i);
  if (mpc_input_terminated(i)) { return 0; }
  return x == c ? mpc_input_success(i, x, o) : mpc_input_failure(i, x);
}
