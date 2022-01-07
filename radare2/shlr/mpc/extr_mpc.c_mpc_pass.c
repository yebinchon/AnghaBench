
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ mpc_parser_t ;


 int MPC_TYPE_PASS ;
 TYPE_1__* mpc_undefined () ;

mpc_parser_t *mpc_pass(void) {
  mpc_parser_t *p = mpc_undefined();
  p->type = MPC_TYPE_PASS;
  return p;
}
