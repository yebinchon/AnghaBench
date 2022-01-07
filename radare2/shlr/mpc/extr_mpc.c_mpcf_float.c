
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float mpc_val_t ;


 int free (float*) ;
 float* malloc (int) ;
 float strtod (float*,int *) ;

mpc_val_t *mpcf_float(mpc_val_t *x) {
  float *y = malloc(sizeof(float));
  *y = strtod(x, ((void*)0));
  free(x);
  return y;
}
