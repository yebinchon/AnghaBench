
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int free ;
 int mpc_alpha () ;
 int mpc_alphanum () ;
 int * mpc_and (int,int ,int *,int *,int ) ;
 int * mpc_many (int ,int ) ;
 int * mpc_or (int,int ,int ) ;
 int mpc_underscore () ;
 int mpcf_strfold ;

mpc_parser_t *mpc_ident(void) {
  mpc_parser_t *p0, *p1;
  p0 = mpc_or(2, mpc_alpha(), mpc_underscore());
  p1 = mpc_many(mpcf_strfold, mpc_alphanum());
  return mpc_and(2, mpcf_strfold, p0, p1, free);
}
