
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int * mpc_maybe_lift (int *,int ) ;
 int mpcf_ctor_null ;

mpc_parser_t *mpc_maybe(mpc_parser_t *a) {
  return mpc_maybe_lift(a, mpcf_ctor_null);
}
