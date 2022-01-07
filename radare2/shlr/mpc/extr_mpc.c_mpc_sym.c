
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int mpc_string (char const*) ;
 int * mpc_tok (int ) ;

mpc_parser_t *mpc_sym(const char *s) { return mpc_tok(mpc_string(s)); }
