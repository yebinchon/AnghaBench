
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int free (int*) ;
 int* malloc (int) ;
 int strtol (int*,int *,int) ;

mpc_val_t *mpcf_hex(mpc_val_t *x) {
  int *y = malloc(sizeof(int));
  *y = strtol(x, ((void*)0), 16);
  free(x);
  return y;
}
