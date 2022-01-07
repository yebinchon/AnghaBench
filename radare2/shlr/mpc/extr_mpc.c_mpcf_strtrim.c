
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int * mpcf_strtriml (int ) ;
 int mpcf_strtrimr (int *) ;

mpc_val_t *mpcf_strtrim(mpc_val_t *x) {
  return mpcf_strtriml(mpcf_strtrimr(x));
}
