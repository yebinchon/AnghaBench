
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;
typedef int mpc_dtor_t ;


 int * mpc_and (int,int ,int *,int ,int ) ;
 int mpc_eoi () ;
 int mpcf_fst ;

mpc_parser_t *mpc_endwith(mpc_parser_t *a, mpc_dtor_t da) { return mpc_and(2, mpcf_fst, a, mpc_eoi(), da); }
