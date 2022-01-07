
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int * calloc (int,int) ;
 int free (int *) ;
 int * realloc (int *,size_t) ;
 int strcat (int *,int *) ;
 scalar_t__ strlen (int *) ;

mpc_val_t *mpcf_strfold(int n, mpc_val_t **xs) {
  int i;
  size_t l = 0;

  if (n == 0) { return calloc(1, 1); }

  for (i = 0; i < n; i++) { l += strlen(xs[i]); }

  xs[0] = realloc(xs[0], l + 1);

  for (i = 1; i < n; i++) {
    strcat(xs[0], xs[i]); free(xs[i]);
  }

  return xs[0];
}
