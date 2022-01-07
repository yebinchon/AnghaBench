
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;
typedef int mpc_dtor_t ;


 int * mpc_between (int *,int ,char*,char*) ;

mpc_parser_t *mpc_brackets(mpc_parser_t *a, mpc_dtor_t ad) { return mpc_between(a, ad, "{", "}"); }
