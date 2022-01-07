
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int * calloc (int,int) ;

mpc_val_t *mpcf_ctor_str(void) { return calloc(1, 1); }
