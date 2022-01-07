
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;
typedef int mpc_input_t ;


 int * mpc_calloc (int *,int,int) ;
 int mpc_free (int *,int *) ;
 int * mpc_realloc (int *,int *,size_t) ;
 int strcat (int *,int *) ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static mpc_val_t *mpcf_input_strfold(mpc_input_t *i, int n, mpc_val_t **xs) {
  int j;
  size_t l = 0;
  if (n == 0) { return mpc_calloc(i, 1, 1); }
  for (j = 0; j < n; j++) { l += strlen(xs[j]); }
  xs[0] = mpc_realloc(i, xs[0], l + 1);
  for (j = 1; j < n; j++) { strcat(xs[0], xs[j]); mpc_free(i, xs[j]); }
  return xs[0];
}
