
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;
typedef int mpc_parser_t ;


 int free ;
 int * mpc_and (int,int ,int *,int *,int ) ;
 int * mpc_lift (int ) ;
 int mpcf_ctor_str ;
 int mpcf_strfold ;

__attribute__((used)) static mpc_val_t *mpcf_re_and(int n, mpc_val_t **xs) {
  int i;
  mpc_parser_t *p = mpc_lift(mpcf_ctor_str);
  for (i = 0; i < n; i++) {
    p = mpc_and(2, mpcf_strfold, p, xs[i], free);
  }
  return p;
}
