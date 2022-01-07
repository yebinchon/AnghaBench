
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;
typedef int mpc_dtor_t ;


 int free ;
 int * mpc_and (int,int ,int ,int *,int ,int ,int ) ;
 int mpc_string (char const*) ;
 int mpcf_snd_free ;

mpc_parser_t *mpc_between(mpc_parser_t *a, mpc_dtor_t ad, const char *o, const char *c) {
  return mpc_and(3, mpcf_snd_free,
    mpc_string(o), a, mpc_string(c),
    free, ad);
}
