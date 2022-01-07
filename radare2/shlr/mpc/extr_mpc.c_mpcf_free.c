
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int free (int *) ;

mpc_val_t *mpcf_free(mpc_val_t *x) { free(x); return ((void*)0); }
