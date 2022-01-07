
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;
typedef int mpc_dtor_t ;


 int * mpc_and (int,int ,int ,int *,int ,int ,int ) ;
 int mpc_eoi () ;
 int mpc_soi () ;
 int mpcf_dtor_null ;
 int mpcf_snd ;

mpc_parser_t *mpc_whole(mpc_parser_t *a, mpc_dtor_t da) { return mpc_and(3, mpcf_snd, mpc_soi(), a, mpc_eoi(), mpcf_dtor_null, da); }
