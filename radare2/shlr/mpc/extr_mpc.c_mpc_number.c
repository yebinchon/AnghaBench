
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int * mpc_expect (int ,char*) ;
 int mpc_hex () ;
 int mpc_int () ;
 int mpc_oct () ;
 int mpc_or (int,int ,int ,int ) ;

mpc_parser_t *mpc_number(void) { return mpc_expect(mpc_or(3, mpc_int(), mpc_hex(), mpc_oct()), "number"); }
