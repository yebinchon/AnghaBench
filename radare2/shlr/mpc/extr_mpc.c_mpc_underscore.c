
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int mpc_char (char) ;
 int * mpc_expect (int ,char*) ;

mpc_parser_t *mpc_underscore(void) { return mpc_expect(mpc_char('_'), "underscore"); }
