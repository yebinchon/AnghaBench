
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int mpc_apply (int ,int ) ;
 int * mpc_expect (int ,char*) ;
 int mpc_whitespaces () ;
 int mpcf_free ;

mpc_parser_t *mpc_blank(void) { return mpc_expect(mpc_apply(mpc_whitespaces(), mpcf_free), "whitespace"); }
