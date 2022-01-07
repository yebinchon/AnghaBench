
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int mpc_digit () ;
 int * mpc_expect (int ,char*) ;
 int mpc_many1 (int ,int ) ;
 int mpcf_strfold ;

mpc_parser_t *mpc_digits(void) { return mpc_expect(mpc_many1(mpcf_strfold, mpc_digit()), "digits"); }
