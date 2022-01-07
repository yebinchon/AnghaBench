
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int * mpc_and (int,int ,int *,int ,int ) ;
 int mpc_blank () ;
 int mpcf_dtor_null ;
 int mpcf_fst ;

mpc_parser_t *mpc_stripr(mpc_parser_t *a) { return mpc_and(2, mpcf_fst, a, mpc_blank(), mpcf_dtor_null); }
