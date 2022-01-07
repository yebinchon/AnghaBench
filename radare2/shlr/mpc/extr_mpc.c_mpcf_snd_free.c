
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int * mpcf_nth_free (int,int **,int) ;

mpc_val_t *mpcf_snd_free(int n, mpc_val_t **xs) { return mpcf_nth_free(n, xs, 1); }
