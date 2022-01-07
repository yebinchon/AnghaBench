
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int mpc_alpha () ;
 int mpc_digit () ;
 int * mpc_expect (int ,char*) ;
 int mpc_or (int,int ,int ,int ) ;
 int mpc_underscore () ;

mpc_parser_t *mpc_alphanum(void) { return mpc_expect(mpc_or(3, mpc_alpha(), mpc_digit(), mpc_underscore()), "alphanumeric"); }
