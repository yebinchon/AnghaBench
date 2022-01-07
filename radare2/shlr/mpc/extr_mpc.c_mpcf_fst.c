
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;



mpc_val_t *mpcf_fst(int n, mpc_val_t **xs) { (void) n; return xs[0]; }
