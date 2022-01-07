
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int free (int *) ;
 int mpc_escape_input_raw_cstr ;
 int mpc_escape_output_raw_cstr ;
 int * mpcf_escape_new (int *,int ,int ) ;

mpc_val_t *mpcf_escape_string_raw(mpc_val_t *x) {
  mpc_val_t *y = mpcf_escape_new(x, mpc_escape_input_raw_cstr, mpc_escape_output_raw_cstr);
  free(x);
  return y;
}
