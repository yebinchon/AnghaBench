
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int * mpc_or (int,int *,int *) ;

__attribute__((used)) static mpc_val_t *mpcf_re_or(int n, mpc_val_t **xs) {
  (void) n;
  if (!xs[1]) { return xs[0]; }
  else { return mpc_or(2, xs[0], xs[1]); }
}
