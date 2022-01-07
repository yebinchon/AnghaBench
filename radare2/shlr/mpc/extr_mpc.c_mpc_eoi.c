
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int mpc_anchor (int ) ;
 int mpc_eoi_anchor ;
 int * mpc_expect (int ,char*) ;

mpc_parser_t *mpc_eoi(void) { return mpc_expect(mpc_anchor(mpc_eoi_anchor), "end of input"); }
