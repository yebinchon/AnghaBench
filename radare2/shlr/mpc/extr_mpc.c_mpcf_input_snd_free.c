
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;
typedef int mpc_input_t ;


 int * mpcf_input_nth_free (int *,int,int **,int) ;

__attribute__((used)) static mpc_val_t *mpcf_input_snd_free(mpc_input_t *i, int n, mpc_val_t **xs) { return mpcf_input_nth_free(i, n, xs, 1); }
