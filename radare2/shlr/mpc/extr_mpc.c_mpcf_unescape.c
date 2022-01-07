
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int free (int *) ;
 int mpc_escape_input_c ;
 int mpc_escape_output_c ;
 int * mpcf_unescape_new (int *,int ,int ) ;

mpc_val_t *mpcf_unescape(mpc_val_t *x) {
  mpc_val_t *y = mpcf_unescape_new(x, mpc_escape_input_c, mpc_escape_output_c);
  free(x);
  return y;
}
