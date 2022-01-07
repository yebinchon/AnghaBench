
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;
typedef int mpc_dtor_t ;


 int * mpc_not_lift (int *,int ,int ) ;
 int mpcf_ctor_null ;

mpc_parser_t *mpc_not(mpc_parser_t *a, mpc_dtor_t da) {
  return mpc_not_lift(a, da, mpcf_ctor_null);
}
