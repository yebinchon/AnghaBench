
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int free ;
 int mpc_between (int ,int ,char*,char*) ;
 int mpc_escape () ;
 int * mpc_expect (int ,char*) ;
 int mpc_many (int ,int *) ;
 int mpc_noneof (char*) ;
 int * mpc_or (int,int ,int ) ;
 int mpcf_strfold ;

mpc_parser_t *mpc_string_lit(void) {
  mpc_parser_t *strchar = mpc_or(2, mpc_escape(), mpc_noneof("\""));
  return mpc_expect(mpc_between(mpc_many(mpcf_strfold, strchar), free, "\"", "\""), "string");
}
